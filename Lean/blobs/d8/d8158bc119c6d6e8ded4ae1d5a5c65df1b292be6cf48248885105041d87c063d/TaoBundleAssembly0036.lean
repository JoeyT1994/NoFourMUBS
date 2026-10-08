import TaoBundleAssembly0035
import TaoBundleChunkBatch0151
import TaoBundleChunkBatch0152
import TaoBundleChunkBatch0153
import TaoBundleChunkBatch0154
import TaoBundleChunkBatch0155
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036
def root_1544317 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1544317_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1544317_right_fuel : Nat := 20
def small_1544317_right_count : Nat := 83
def small_1544317_right_encoded : String := "1151E9090000000408A912F712073CF60000000008A91305120701040000000205000102135D44F9050000FC135D80FD00000003050000FE00000005135D450900000004000000050000000900000001135D80F900000001050000FC135D80FD00000003050000FE135D81090CFD9BF70F350CF60000000004548A0513867104000000020C9A86F6000000050F8750F70780010200000005128A7CF9000000010000000500000000000000050000000500000004135D4509000000040CFD9BF70F350CF60000000004548A0513867104000000020C9A86F6000000050F8750F700000009000000000000000500000005135D44FD050000FE135D81090CFD9BF7000000090F34D0F6000000050000000000000004135D450900000004000000090000000312073D040500010200000005135D80F9000000010000000500000002120700F60000000500000000"
theorem small_1544317_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1544317_right_root small_1544317_right_fuel small_1544317_right_count small_1544317_right_encoded = true := by
  decide +kernel
theorem small_1544317_right_covered : CoveredBy scale carrier boxes small_1544317_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1544317_right_root small_1544317_right_fuel small_1544317_right_count small_1544317_right_encoded small_1544317_right_checked

theorem cover_1544317 : CoveredBy scale carrier boxes root_1544317 := by
  apply coveredBy_split_literal root_1544317 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.root_1544318 small_1544317_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.cover_1544318
  · exact small_1544317_right_covered
#print axioms cover_1544317

def root_1544312 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1544312_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1544312_right_fuel : Nat := 1
def small_1544312_right_count : Nat := 1
def small_1544312_right_encoded : String := "00000003"
theorem small_1544312_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1544312_right_root small_1544312_right_fuel small_1544312_right_count small_1544312_right_encoded = true := by
  decide +kernel
theorem small_1544312_right_covered : CoveredBy scale carrier boxes small_1544312_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1544312_right_root small_1544312_right_fuel small_1544312_right_count small_1544312_right_encoded small_1544312_right_checked

theorem cover_1544312 : CoveredBy scale carrier boxes root_1544312 := by
  apply coveredBy_split_literal root_1544312 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.root_1544317 small_1544312_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.cover_1544317
  · exact small_1544312_right_covered
#print axioms cover_1544312

def root_1542090 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1542090 : CoveredBy scale carrier boxes root_1542090 := by
  apply coveredBy_split_literal root_1542090 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0603.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.root_1544312 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0603.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.cover_1544312
#print axioms cover_1542090

def root_1542085 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1542085_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1542085_right_fuel : Nat := 1
def small_1542085_right_count : Nat := 1
def small_1542085_right_encoded : String := "00000002"
theorem small_1542085_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1542085_right_root small_1542085_right_fuel small_1542085_right_count small_1542085_right_encoded = true := by
  decide +kernel
theorem small_1542085_right_covered : CoveredBy scale carrier boxes small_1542085_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1542085_right_root small_1542085_right_fuel small_1542085_right_count small_1542085_right_encoded small_1542085_right_checked

theorem cover_1542085 : CoveredBy scale carrier boxes root_1542085 := by
  apply coveredBy_split_literal root_1542085 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.root_1542090 small_1542085_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.cover_1542090
  · exact small_1542085_right_covered
#print axioms cover_1542085

def root_1541985 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1541985_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1541985_left_fuel : Nat := 15
def small_1541985_left_count : Nat := 47
def small_1541985_left_encoded : String := "1151E905000000020A0000FC115224FD000000030A0000FE1152250908A912F712073CF60000000008A912FD12073CFC0000000308A91309120700FE05000102135D44F90500010400000009000000050000000100000005000000040000000500000005120700F608A912FD12073CFC0000000300000005000000050000000000000004000000051151E8FD0A0000FE1152250908A912F712073CF6000000000000000500000005000000041151E909000000040000000500000003"
theorem small_1541985_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1541985_left_root small_1541985_left_fuel small_1541985_left_count small_1541985_left_encoded = true := by
  decide +kernel
theorem small_1541985_left_covered : CoveredBy scale carrier boxes small_1541985_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1541985_left_root small_1541985_left_fuel small_1541985_left_count small_1541985_left_encoded small_1541985_left_checked

theorem cover_1541985 : CoveredBy scale carrier boxes root_1541985 := by
  apply coveredBy_split_literal root_1541985 small_1541985_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.root_1542085 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_1541985_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.cover_1542085
#print axioms cover_1541985

def root_1541980 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1541980_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1541980_right_fuel : Nat := 1
def small_1541980_right_count : Nat := 1
def small_1541980_right_encoded : String := "00000001"
theorem small_1541980_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1541980_right_root small_1541980_right_fuel small_1541980_right_count small_1541980_right_encoded = true := by
  decide +kernel
theorem small_1541980_right_covered : CoveredBy scale carrier boxes small_1541980_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1541980_right_root small_1541980_right_fuel small_1541980_right_count small_1541980_right_encoded small_1541980_right_checked

theorem cover_1541980 : CoveredBy scale carrier boxes root_1541980 := by
  apply coveredBy_split_literal root_1541980 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.root_1541985 small_1541980_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.cover_1541985
  · exact small_1541980_right_covered
#print axioms cover_1541980

def root_1541979 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1541979 : CoveredBy scale carrier boxes root_1541979 := by
  apply coveredBy_split_literal root_1541979 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.root_1541980 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0607.root coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.cover_1541980
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0607.covered
#print axioms cover_1541979

def root_1541973 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1541973_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1541973_left_fuel : Nat := 1
def small_1541973_left_count : Nat := 1
def small_1541973_left_encoded : String := "00000000"
theorem small_1541973_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1541973_left_root small_1541973_left_fuel small_1541973_left_count small_1541973_left_encoded = true := by
  decide +kernel
theorem small_1541973_left_covered : CoveredBy scale carrier boxes small_1541973_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1541973_left_root small_1541973_left_fuel small_1541973_left_count small_1541973_left_encoded small_1541973_left_checked

theorem cover_1541973 : CoveredBy scale carrier boxes root_1541973 := by
  apply coveredBy_split_literal root_1541973 small_1541973_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.root_1541979 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_1541973_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.cover_1541979
#print axioms cover_1541973

def root_1559209 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1559209_right_root : ZRayBox := fun j => (#[⟨⟨(-6291456), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1559209_right_fuel : Nat := 19
def small_1559209_right_count : Nat := 203
def small_1559209_right_encoded : String := "128A40F707800102128A40F9078000FC128A7CFD00000003022A458513E1C50400000002022A45890000000513E200FE00000004064000F612FFACF7000000000640010212FF70F908C000FC11FC24FD00000003011523450000000500000007000000050000000112FFACF90000000108C000FC11FC24FD0000000301152345000000050000000611FBE8FD000000050000000312FF70F7000000050000000013E20104022A458913E1C4FE064000F612FFACF700000000064001020000000712FFACF90000000108C000FC0000000611FBE8FD0000000500000003000000070000000413E200FE00000004064000F612FFACF7000000000640010212FF70F9000000070000000112FFACF90000000108C000FC0000000611FBE8FD033F67C513BBF50400000002033F67C90000000500000006000000060000000312FF70F7000000070000000000000002128A40FD022A45850000000513E20104022A45890000000513E200FE00000004064000F612FFACF7000000000640010212FF70F9064000FC12FFACFD00000003033F67C50000000500000007000000090000000112FFACF900000001064000FC12FFACFD00000003033F67C50000000513BC3104033F67C900000005000000070000000212FF70FD000000080000000312FF70F70640010212FF70F9000000050000000112FFACF9000000010000000800000000000000020000000300000001128A7CF900000001078000FC128A7CFD00000003022A458513E1C50400000002022A45890000000513E200FE00000004064000F612FFACF70000000008C0010211FBE8F908C000FC0000000611FBE8FD0000000500000003000000010000000612FF70F7000000060000000013E20104022A458913E1C4FE00000006000000040000000600000002128A40FD022A45850000000513E20104022A45890000000513E200FE00000004064000F612FFACF70000000008C0010211FBE8F9064000FC12FFACFD00000003033F67C5000000050000000612FF70FD00000008000000030000000111FC24F900000001064000FC000000060000000812FF70F708C001020000000811FC24F9000000010000000600000000000000020000000300000000"
theorem small_1559209_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1559209_right_root small_1559209_right_fuel small_1559209_right_count small_1559209_right_encoded = true := by
  decide +kernel
theorem small_1559209_right_covered : CoveredBy scale carrier boxes small_1559209_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1559209_right_root small_1559209_right_fuel small_1559209_right_count small_1559209_right_encoded small_1559209_right_checked

theorem cover_1559209 : CoveredBy scale carrier boxes root_1559209 := by
  apply coveredBy_split_literal root_1559209 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0610.root small_1559209_right_root coord0 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0610.covered
  · exact small_1559209_right_covered
#print axioms cover_1559209

def root_1559204 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1559204_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16378880), (-15122432)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1559204_right_fuel : Nat := 1
def small_1559204_right_count : Nat := 1
def small_1559204_right_encoded : String := "00000004"
theorem small_1559204_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1559204_right_root small_1559204_right_fuel small_1559204_right_count small_1559204_right_encoded = true := by
  decide +kernel
theorem small_1559204_right_covered : CoveredBy scale carrier boxes small_1559204_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1559204_right_root small_1559204_right_fuel small_1559204_right_count small_1559204_right_encoded small_1559204_right_checked

theorem cover_1559204 : CoveredBy scale carrier boxes root_1559204 := by
  apply coveredBy_split_literal root_1559204 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.root_1559209 small_1559204_right_root coord4 false (-16378880)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.cover_1559209
  · exact small_1559204_right_covered
#print axioms cover_1559204

def root_1562540 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(-15553280), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1562540_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(-15553280), (-14529024)⟩⟩, ⟨⟨(6291456), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1562540_right_fuel : Nat := 23
def small_1562540_right_count : Nat := 307
def small_1562540_right_encoded : String := "128A7CF900000001078000FC128A7CFD00000003022A458513E1C50400000002067ECE8912EA58FE08C000F611FC24F70000000008C0010211FBE8F908C000FC11FC24FD000000030115234513F8590400000002000000060000000611FBE8FD0115234513F85904000000020569AC491340D4FE096000F611AABCF7000000000000000711AA80F70820010200000008000000060000000000000004134110FE00000004096000F6000000070000000813F895040569AC491340D4FE096000F611AABCF700000000082001020000000A0000000611AA80F7000000060000000000000004134110FE00000004096000F611AABCF7000000000820010212465CF9082000FC0000000600000008000000010000000611AA80F7000000060000000000000002000000030000000111FC24F90000000108C000FC0000000611FBE8FD0115234500000007000000060000000311FBE8F708C0010211FBE8F908C000FC0000000611FBE8FD011523450000000813F895040569AC49000000060000000600000002000000030000000100000006000000000000000412EA94FE0000000408C000F611FC24F70000000008C0010211FBE8F908C000FC11FC24FD000000030000000611FBE8FD011523450000000813F895040793F0C9128220FE00000008000000040000000500000002000000030000000111FC24F9000000010000000611FBE8F708C0010211FBE8F908C000FC000000060000000800000001000000060000000013E20104067ECE8912EA58FE08C000F611FC24F70000000008C0010211FBE8F908C000FC0000000611FBE8FD033F67C513BBF504000000020569AC491340D4FE0000000600000004000000060000000600000003000000010000000611FBE8F700000006000000000000000412EA94FE0000000408C000F611FC24F7000000000000000511FBE8F7000000060000000000000002128A40FD022A458513E1C50400000002067ECE8912EA58FE08C000F611FC24F70000000008C0010211FBE8F9064000FC12FFACFD00000003011523450000000813F895040569AC491340D4FE096000F60000000A00000008000000040000000800000002000000080000000111FC24F900000001064000FC12FFACFD00000003011523450000000713F895040569AC490000000700000007000000020000000811FBE8F708C001020000000800000008000000000000000412EA94FE000000040000000813E20104067ECE8912EA58FE08C000F611FC24F70000000008C0010211FBE8F9064000FC12FFACFD00000003033F67C513BBF504000000020569AC491340D4FE096000F60000000A11AA80F708200102000000080000000A00000000000000040000000900000009000000090000000111FC24F900000001064000FC12FFACFD00000003033F67C513BBF504000000020569AC490000000A000000060000000612FF70FD033F67C500000008000000090000000311FBE8F708C0010211FBE8F9064000FC12FFACFD00000003033F67C50000000800000009000000080000000111FC24F900000001064000FC0000000600000008000000000000000412EA94FE0000000408C000F611FC24F70000000008C001020000000911FC24F900000001064000FC12FFACFD00000003033F67C500000008000000050000000811FBE8F700000008000000000000000200000003"
theorem small_1562540_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1562540_right_root small_1562540_right_fuel small_1562540_right_count small_1562540_right_encoded = true := by
  decide +kernel
theorem small_1562540_right_covered : CoveredBy scale carrier boxes small_1562540_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1562540_right_root small_1562540_right_fuel small_1562540_right_count small_1562540_right_encoded small_1562540_right_checked

theorem cover_1562540 : CoveredBy scale carrier boxes root_1562540 := by
  apply coveredBy_split_literal root_1562540 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0611.root small_1562540_right_root coord1 false (6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0611.covered
  · exact small_1562540_right_covered
#print axioms cover_1562540

def root_1562534 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1562534_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(-16244736), (-15553280)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1562534_left_fuel : Nat := 1
def small_1562534_left_count : Nat := 1
def small_1562534_left_encoded : String := "00000000"
theorem small_1562534_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1562534_left_root small_1562534_left_fuel small_1562534_left_count small_1562534_left_encoded = true := by
  decide +kernel
theorem small_1562534_left_covered : CoveredBy scale carrier boxes small_1562534_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1562534_left_root small_1562534_left_fuel small_1562534_left_count small_1562534_left_encoded small_1562534_left_checked

theorem cover_1562534 : CoveredBy scale carrier boxes root_1562534 := by
  apply coveredBy_split_literal root_1562534 small_1562534_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.root_1562540 coord0 true (-15553280)
  · decide +kernel
  · decide +kernel
  · exact small_1562534_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.cover_1562540
#print axioms cover_1562534

def root_1562533 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1562533_right_root : ZRayBox := fun j => (#[⟨⟨(-6291456), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1562533_right_fuel : Nat := 19
def small_1562533_right_count : Nat := 163
def small_1562533_right_encoded : String := "128A40F707800102128A40F9078000FC128A7CFD00000003022A458513E1C50400000002067ECE8912EA58FE064000F612FFACF7000000000640010212FF70F908C000FC11FC24FD000000030115234513F85904000000020569AC49000000050000000813F895040569AC49000000070000000600000002000000080000000112FFACF90000000108C000FC11FC24FD00000003000000060000000812FF70F7064001020000000800000008000000000000000412EA94FE00000004064000F612FFACF700000000000000080000000813E20104067ECE8912EA58FE064000F612FFACF7000000000640010212FF70F908C000FC00000007000000070000000112FFACF90000000108C000FC0000000611FBE8FD033F67C513BBF504000000020569AC490000000600000006000000060000000312FF70F7064001020000000700000006000000000000000412EA94FE00000004064000F612FFACF7000000000640010212FF70F9000000090000000112FFACF90000000108C000FC000000060000000812FF70F70640010200000007000000060000000000000002128A40FD022A45850000000813E20104067ECE8912EA58FE064000F600000009000000080000000400000008000000020000000300000001128A7CF900000001078000FC128A7CFD00000003022A458513E1C50400000002067ECE8912EA58FE064000F612FFACF70000000008C0010211FBE8F908C000FC0000000600000008000000010000000600000006000000040000000613E20104067ECE89000000060000000600000002128A40FD022A45850000000813E20104067ECE8912EA58FE064000F612FFACF70000000008C001020000000800000008000000080000000400000008000000020000000300000000"
theorem small_1562533_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1562533_right_root small_1562533_right_fuel small_1562533_right_count small_1562533_right_encoded = true := by
  decide +kernel
theorem small_1562533_right_covered : CoveredBy scale carrier boxes small_1562533_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1562533_right_root small_1562533_right_fuel small_1562533_right_count small_1562533_right_encoded small_1562533_right_checked

theorem cover_1562533 : CoveredBy scale carrier boxes root_1562533 := by
  apply coveredBy_split_literal root_1562533 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.root_1562534 small_1562533_right_root coord0 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.cover_1562534
  · exact small_1562533_right_covered
#print axioms cover_1562533

def root_1562527 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1562527_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1562527_left_fuel : Nat := 1
def small_1562527_left_count : Nat := 1
def small_1562527_left_encoded : String := "00000004"
theorem small_1562527_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1562527_left_root small_1562527_left_fuel small_1562527_left_count small_1562527_left_encoded = true := by
  decide +kernel
theorem small_1562527_left_covered : CoveredBy scale carrier boxes small_1562527_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1562527_left_root small_1562527_left_fuel small_1562527_left_count small_1562527_left_encoded small_1562527_left_checked

theorem cover_1562527 : CoveredBy scale carrier boxes root_1562527 := by
  apply coveredBy_split_literal root_1562527 small_1562527_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.root_1562533 coord4 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_1562527_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.cover_1562533
#print axioms cover_1562527

def root_1559203 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1559203 : CoveredBy scale carrier boxes root_1559203 := by
  apply coveredBy_split_literal root_1559203 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.root_1559204 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.root_1562527 coord4 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.cover_1559204
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.cover_1562527
#print axioms cover_1559203

def root_1559197 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1559197_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1559197_left_fuel : Nat := 1
def small_1559197_left_count : Nat := 1
def small_1559197_left_encoded : String := "00000002"
theorem small_1559197_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1559197_left_root small_1559197_left_fuel small_1559197_left_count small_1559197_left_encoded = true := by
  decide +kernel
theorem small_1559197_left_covered : CoveredBy scale carrier boxes small_1559197_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1559197_left_root small_1559197_left_fuel small_1559197_left_count small_1559197_left_encoded small_1559197_left_checked

theorem cover_1559197 : CoveredBy scale carrier boxes root_1559197 := by
  apply coveredBy_split_literal root_1559197 small_1559197_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.root_1559203 coord2 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_1559197_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.cover_1559203
#print axioms cover_1559197

def root_1559196 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1559196_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1559196_right_fuel : Nat := 23
def small_1559196_right_count : Nat := 465
def small_1559196_right_encoded : String := "1386AD0404548A09138670FE078000F6128A7CF70000000007800102128A40F9078000FC128A7CFD00000003067ECE8512EA590400000002022A458913E1C4FE08C000F611FC24F7000000000640010212FF70F908C000FC00000007000000070000000112FFACF90000000108C000FC000000080000000A11FBE8F700000007000000000000000413E200FE0000000408C000F611FC24F7000000000640010212FF70F908C000FC11FC24FD0000000300000007000000090000000112FFACF90000000108C000FC11FC24FD000000030000000611FBE8FD0569AC451340D50400000002033F67C90000000A00000009000000090000000311FBE8F7064001020000000712FFACF90000000108C000FC0000000611FBE8FD0569AC451340D504000000020000000600000006000000030000000012EA9504022A45890000000713E200FE0000000408C000F6000000050000000700000002128A40FD067ECE8512EA590400000002022A458913E1C4FE08C000F611FC24F7000000000640010212FF70F9000000090000000112FFACF900000001064000FC0000000A0000000911FBE8F70640010212FF70F9000000090000000112FFACF900000001064000FC12FFACFD000000030569AC451340D504000000020115234900000005000000070000000700000009000000000000000400000009000000090000000300000001128A7CF900000001078000FC128A7CFD00000003067ECE8512EA590400000002022A458913E1C4FE08C000F611FC24F7000000000000000A11FBE8F700000006000000000000000413E200FE0000000408C000F611FC24F70000000008C0010200000006000000060000000612EA9504022A458913E1C4FE00000006000000040000000600000002128A40FD067ECE8512EA590400000002022A458913E1C4FE08C000F60000000A11FBE8F708C0010211FBE8F9064000FC12FFACFD000000030000000A0000000A000000010000000A000000000000000413E200FE0000000408C000F611FC24F70000000008C0010211FBE8F9064000FC12FFACFD000000030569AC450000000A00000009000000090000000111FC24F9000000010000000A11FBE8F708C0010211FBE8F9064000FC12FFACFD000000030569AC451340D50400000002033F67C9000000060000000600000006000000090000000111FC24F900000001064000FC0000000612FF70FD0569AC450000000A00000006000000030000000012EA9504022A458913E1C4FE08C000F60000000A11FBE8F708C0010211FBE8F900000009000000010000000A0000000000000004000000090000000200000003128A40F707800102128A40F9078000FC128A7CFD00000003067ECE8512EA590400000002022A4589000000070000000700000007128A40FD067ECE8512EA590400000002022A458913E1C4FE064000F612FFACF70000000000000007000000070000000413E200FE00000004064000F60000000900000007000000070000000300000001128A7CF900000001078000FC128A7CFD00000003067ECE8512EA5904000000020000000600000006128A40FD067ECE8512EA590400000002022A458913E1C4FE064000F612FFACF70000000008C0010211FBE8F9064000FC0000000612FF70FD0569AC450000000500000007000000030000000111FC24F9000000010000000612FF70F708C0010211FBE8F9000000070000000100000006000000000000000413E200FE00000004064000F612FFACF70000000008C0010211FBE8F9064000FC0000000600000009000000010000000612FF70F708C0010211FBE8F9064000FC000000060000000700000001000000060000000012EA9504022A458913E1C4FE064000F612FFACF70000000008C001020000000700000006000000060000000413E200FE00000004064000F60000000900000006000000020000000300000000000000041386ACFE00000004078000F6128A7CF70000000007800102128A40F9078000FC128A7CFD00000003067ECE8512EA590400000002067ECE8912EA58FE08C000F611FC24F7000000000000000511FBE8F7064001020000000912FFACF90000000108C000FC0000000500000009000000000000000400000005000000050000000900000001128A7CF900000001078000FC128A7CFD00000003067ECE8512EA590400000002067ECE8912EA58FE00000006000000040000000500000005128A40FD067ECE8512EA590400000002067ECE8912EA58FE08C000F60000000911FBE8F7000000090000000000000004000000090000000900000003128A40F707800102128A40F9078000FC128A7CFD00000003067ECE8512EA590400000002067ECE890000000700000009000000070000000900000001128A7CF900000001078000FC128A7CFD00000003067ECE8512EA5904000000020000000600000006128A40FD067ECE8512EA590400000002067ECE8912EA58FE064000F612FFACF70000000008C00102000000090000000612FF70F708C00102000000080000000600000000000000040000000900000009000000030000000000000002"
theorem small_1559196_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1559196_right_root small_1559196_right_fuel small_1559196_right_count small_1559196_right_encoded = true := by
  decide +kernel
theorem small_1559196_right_covered : CoveredBy scale carrier boxes small_1559196_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1559196_right_root small_1559196_right_fuel small_1559196_right_count small_1559196_right_encoded small_1559196_right_checked

theorem cover_1559196 : CoveredBy scale carrier boxes root_1559196 := by
  apply coveredBy_split_literal root_1559196 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.root_1559197 small_1559196_right_root coord2 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.cover_1559197
  · exact small_1559196_right_covered
#print axioms cover_1559196

def root_1559190 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1559190_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1559190_left_fuel : Nat := 1
def small_1559190_left_count : Nat := 1
def small_1559190_left_encoded : String := "00000003"
theorem small_1559190_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1559190_left_root small_1559190_left_fuel small_1559190_left_count small_1559190_left_encoded = true := by
  decide +kernel
theorem small_1559190_left_covered : CoveredBy scale carrier boxes small_1559190_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1559190_left_root small_1559190_left_fuel small_1559190_left_count small_1559190_left_encoded small_1559190_left_checked

theorem cover_1559190 : CoveredBy scale carrier boxes root_1559190 := by
  apply coveredBy_split_literal root_1559190 small_1559190_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.root_1559196 coord3 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_1559190_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.cover_1559196
#print axioms cover_1559190

def root_1559189 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1559189_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1559189_right_fuel : Nat := 21
def small_1559189_right_count : Nat := 191
def small_1559189_right_encoded : String := "135D44FD04548A05138671040000000204548A09138670FE078000F6128A7CF70000000007800102128A40F9028000FC13D7ECFD00000003022A45850000000513E20104022A458900000005000000090000000213D7B0FD022A458500000005000000090000000300000001128A7CF900000001028000FC13D7ECFD00000003022A45850000000513E20104022A45890000000513E200FE0000000408C000F611FC24F70000000008C0010211FBE8F9000000090000000111FC24F9000000010000000A11FBE8F708C001020000000811FC24F90000000100000008000000000000000213D7B0FD022A45850000000513E20104022A458900000005000000080000000200000003128A40F707800102128A40F90000000500000001128A7CF900000001028000FC13D7ECFD00000003022A45850000000513E20104022A45890000000500000008000000020000000500000000000000041386ACFE00000004078000F6128A7CF70000000007800102128A40F9028000FC13D7ECFD00000003022A458500000008000000090000000800000001128A7CF900000001028000FC13D7ECFD00000003022A45850000000813E20104067ECE8912EA58FE08C000F6000000090000000800000004000000080000000200000008128A40F700000008000000001386AD0404548A09138670FE078000F6128A7CF70000000007800102128A40F90000000900000001128A7CF900000001028000FC13D7ECFD00000003067ECE8512EA590400000002022A458913E1C4FE08C000F60000000A11FBE8F708C001020000000A0000000A0000000000000004000000090000000900000009128A40F707800102128A40F90000000900000001128A7CF900000001028000FC13D7ECFD00000003067ECE8512EA590400000002022A458913E1C4FE064000F612FFACF70000000008C0010211FBE8F9000000050000000111FC24F90000000103C000FC0000000A0000000512FF70F70000000500000000000000040000000900000009000000090000000000000004000000090000000200000003"
theorem small_1559189_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1559189_right_root small_1559189_right_fuel small_1559189_right_count small_1559189_right_encoded = true := by
  decide +kernel
theorem small_1559189_right_covered : CoveredBy scale carrier boxes small_1559189_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1559189_right_root small_1559189_right_fuel small_1559189_right_count small_1559189_right_encoded small_1559189_right_checked

theorem cover_1559189 : CoveredBy scale carrier boxes root_1559189 := by
  apply coveredBy_split_literal root_1559189 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.root_1559190 small_1559189_right_root coord3 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.cover_1559190
  · exact small_1559189_right_covered
#print axioms cover_1559189

def root_1559183 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1559183_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1559183_left_fuel : Nat := 1
def small_1559183_left_count : Nat := 1
def small_1559183_left_encoded : String := "00000001"
theorem small_1559183_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1559183_left_root small_1559183_left_fuel small_1559183_left_count small_1559183_left_encoded = true := by
  decide +kernel
theorem small_1559183_left_covered : CoveredBy scale carrier boxes small_1559183_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1559183_left_root small_1559183_left_fuel small_1559183_left_count small_1559183_left_encoded small_1559183_left_checked

theorem cover_1559183 : CoveredBy scale carrier boxes root_1559183 := by
  apply coveredBy_split_literal root_1559183 small_1559183_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.root_1559189 coord1 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_1559183_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.cover_1559189
#print axioms cover_1559183

def root_1557461 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1557461 : CoveredBy scale carrier boxes root_1557461 := by
  apply coveredBy_split_literal root_1557461 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0609.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.root_1559183 coord1 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0609.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.cover_1559183
#print axioms cover_1557461

def root_1557455 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1557455_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1557455_left_fuel : Nat := 1
def small_1557455_left_count : Nat := 1
def small_1557455_left_encoded : String := "00000000"
theorem small_1557455_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1557455_left_root small_1557455_left_fuel small_1557455_left_count small_1557455_left_encoded = true := by
  decide +kernel
theorem small_1557455_left_covered : CoveredBy scale carrier boxes small_1557455_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1557455_left_root small_1557455_left_fuel small_1557455_left_count small_1557455_left_encoded small_1557455_left_checked

theorem cover_1557455 : CoveredBy scale carrier boxes root_1557455 := by
  apply coveredBy_split_literal root_1557455 small_1557455_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.root_1557461 coord0 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_1557455_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.cover_1557461
#print axioms cover_1557455

def root_1557454 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1557454_right_root : ZRayBox := fun j => (#[⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1557454_right_fuel : Nat := 19
def small_1557454_right_count : Nat := 261
def small_1557454_right_encoded : String := "135D44F705000102135D44F9050000FC135D80FD0000000304548A05138671040000000204548A09138670FE028000F613D7ECF700000000028001020000000713D7ECF900000001078000FC128A7CFD0000000300000007128A40FD000000050000000300000007000000041386ACFE00000004028000F613D7ECF7000000000280010213D7B0F9078000FC00000007000000070000000113D7ECF900000001078000FC128A7CFD00000003022A458500000008000000070000000813D7B0F700000007000000001386AD0404548A09000000070000000700000002135D44FD04548A05138671040000000204548A0900000005000000081386AD0400000009000000020000000300000001135D80F900000001050000FC135D80FD0000000304548A05138671040000000204548A09138670FE028000F613D7ECF70000000007800102128A40F9078000FC128A7CFD00000003022A45850000000500000007128A40FD000000050000000300000001128A7CF900000001078000FC128A7CFD00000003022A45850000000500000006128A40FD022A45850000000513E20104022A45890000000500000008000000020000000313D7B0F707800102128A40F9078000FC000000070000000500000001128A7CF900000001078000FC000000060000000800000000000000041386ACFE00000004028000F613D7ECF70000000007800102128A40F9078000FC128A7CFD00000003022A45850000000813E20104067ECE890000000700000007000000020000000800000001128A7CF900000001078000FC128A7CFD00000003022A458500000008000000060000000813D7B0F7078001020000000800000008000000001386AD0404548A09138670FE028000F613D7ECF70000000007800102128A40F90000000700000001128A7CF900000001078000FC00000006128A40FD067ECE8512EA590400000002022A45890000000700000006000000060000000313D7B0F70000000700000000000000041386ACFE00000004028000F613D7ECF70000000007800102128A40F9078000FC000000070000000700000001128A7CF900000001078000FC00000006128A40FD067ECE8500000008000000090000000313D7B0F70780010200000007128A7CF900000001078000FC00000006000000080000000000000002135D44FD04548A05138671040000000204548A0900000005000000081386AD0404548A09138670FE028000F613D7ECF70000000007800102128A40F90000000900000001128A7CF900000001028000FC13D7ECFD00000003067ECE8512EA590400000002022A4589000000050000000812EA9504022A45890000000700000007000000020000000813D7B0F707800102000000080000000800000000000000041386ACFE00000004028000F60000000900000008000000020000000300000000"
theorem small_1557454_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1557454_right_root small_1557454_right_fuel small_1557454_right_count small_1557454_right_encoded = true := by
  decide +kernel
theorem small_1557454_right_covered : CoveredBy scale carrier boxes small_1557454_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1557454_right_root small_1557454_right_fuel small_1557454_right_count small_1557454_right_encoded small_1557454_right_checked

theorem cover_1557454 : CoveredBy scale carrier boxes root_1557454 := by
  apply coveredBy_split_literal root_1557454 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.root_1557455 small_1557454_right_root coord0 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.cover_1557455
  · exact small_1557454_right_covered
#print axioms cover_1557454

def root_1557449 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1557449_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1557449_right_fuel : Nat := 1
def small_1557449_right_count : Nat := 1
def small_1557449_right_encoded : String := "00000004"
theorem small_1557449_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1557449_right_root small_1557449_right_fuel small_1557449_right_count small_1557449_right_encoded = true := by
  decide +kernel
theorem small_1557449_right_covered : CoveredBy scale carrier boxes small_1557449_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1557449_right_root small_1557449_right_fuel small_1557449_right_count small_1557449_right_encoded small_1557449_right_checked

theorem cover_1557449 : CoveredBy scale carrier boxes root_1557449 := by
  apply coveredBy_split_literal root_1557449 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.root_1557454 small_1557449_right_root coord4 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.cover_1557454
  · exact small_1557449_right_covered
#print axioms cover_1557449

def root_1557448 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1557448_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1557448_right_fuel : Nat := 27
def small_1557448_right_count : Nat := 351
def small_1557448_right_encoded : String := "12073CFE00000004050000F6135D80F70000000005000102135D44F9050000FC135D80FD0000000304548A0513867104000000020CFD9C090F34D0FE078000F6128A7CF700000000028001020000000913D7ECF900000001078000FC128A7CFD00000003022A458513E1C504000000020AD3578910D100FE0000000900000004000000050000000500000009128A40F7028001020000000913D7ECF900000001078000FC128A7CFD00000003022A458500000008000000090000000800000000000000040F350CFE000000040C9A86FE00000009000000091386AD040CFD9C090F34D0FE000000090000000400000005000000020000000900000001135D80F900000001050000FC135D80FD0000000304548A0513867104000000020CFD9C090F34D0FE078000F6128A7CF70000000007800102128A40F9078000FC128A7CFD00000003022A458513E1C504000000020AD3578910D100FE08C000F611FC24F7000000000640010212FF70F9000000090000000112FFACF90000000108C000FC000000050000000811FBE8F70000000800000000000000040000000500000005128A40FD022A458500000008000000090000000300000001128A7CF900000001078000FC128A7CFD00000003022A458513E1C504000000020AD3578910D100FE08C000F611FC24F70000000008C001020000000511FC24F9000000010000000500000008000000040000000500000005128A40FD022A45850000000813E201040AD3578910D100FE0000000800000004000000050000000200000003128A40F707800102128A40F9078000FC128A7CFD00000003022A45850000000813E201040AD3578910D100FE000000080000000400000005000000020000000800000001128A7CF900000001078000FC128A7CFD00000003022A45850000000813E201040AD3578910D100FE000000060000000400000005000000020000000800000000000000040F350CFE000000040C9A86FE0F878D09078000F6128A7CF70000000007800102128A40F90000000900000001128A7CF900000001078000FC0000000500000008128A40F70000000800000000000000040F87510900000004078000F6128A7CF7000000000780010200000005128A7CF900000001078000FC0000000500000008000000081386AD040CFD9C090F34D0FE078000F6128A7CF7000000000780010200000005128A7CF90000000100000005128A40F707800102128A40F90000000900000001128A7CF900000001078000FC128A7CFD00000003000000050000000900000000000000040F350CFE000000040C9A86FE000000050F875109000000040000000500000002135D44FD04548A0513867104000000020CFD9C090F34D0FE078000F6128A7CF700000000000000080000000800000004000000081386AD04000000090000000200000003135D44F705000102135D44F9050000FC135D80FD0000000304548A0513867104000000020CFD9C090F34D0FE0000000800000004000000081386AD040CFD9C09000000070000000900000002135D44FD04548A0500000008000000090000000300000001135D80F900000001050000FC135D80FD0000000304548A0513867104000000020CFD9C090F34D0FE028000F613D7ECF7000000000780010200000008000000080000000800000004000000081386AD040CFD9C090F34D0FE028000F613D7ECF70000000007800102128A40F90000000900000001128A7CF900000001078000FC128A7CFD00000003000000060000000813D7B0F707800102000000070000000800000000000000040F350CFE000000040C9A86FE0F878D09028000F60000000900000008000000040F875109000000040000000800000002135D44FD04548A05000000081386AD040CFD9C090F34D0FE000000080000000400000008000000020000000300000000"
theorem small_1557448_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1557448_right_root small_1557448_right_fuel small_1557448_right_count small_1557448_right_encoded = true := by
  decide +kernel
theorem small_1557448_right_covered : CoveredBy scale carrier boxes small_1557448_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1557448_right_root small_1557448_right_fuel small_1557448_right_count small_1557448_right_encoded small_1557448_right_checked

theorem cover_1557448 : CoveredBy scale carrier boxes root_1557448 := by
  apply coveredBy_split_literal root_1557448 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.root_1557449 small_1557448_right_root coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.cover_1557449
  · exact small_1557448_right_covered
#print axioms cover_1557448

def root_1557442 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1557442_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1557442_left_fuel : Nat := 1
def small_1557442_left_count : Nat := 1
def small_1557442_left_encoded : String := "00000002"
theorem small_1557442_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1557442_left_root small_1557442_left_fuel small_1557442_left_count small_1557442_left_encoded = true := by
  decide +kernel
theorem small_1557442_left_covered : CoveredBy scale carrier boxes small_1557442_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1557442_left_root small_1557442_left_fuel small_1557442_left_count small_1557442_left_encoded small_1557442_left_checked

theorem cover_1557442 : CoveredBy scale carrier boxes root_1557442 := by
  apply coveredBy_split_literal root_1557442 small_1557442_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.root_1557448 coord2 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_1557442_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.cover_1557448
#print axioms cover_1557442

def root_1557441 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1557441_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1557441_right_fuel : Nat := 20
def small_1557441_right_count : Nat := 121
def small_1557441_right_encoded : String := "12073D0408A91309120700FE050000F6135D80F70000000005000102135D44F90000000900000001135D80F900000001050000FC135D80FD000000030CFD9C050F34D1040000000204548A09138670FE078000F6128A7CF70000000007800102128A40F90000000900000001128A7CF900000001078000FC128A7CFD000000030000000500000009128A40F70780010200000007128A7CF900000001078000FC000000060000000900000000000000041386ACFE00000004078000F600000005128A40F700000009000000000F350D04000000050000000200000009135D44F705000102135D44F9050000FC000000070000000700000001135D80F900000001050000FC135D80FD000000030CFD9C050F34D1040000000204548A09000000071386ACFE00000004000000070000000700000009000000000000000412073CFE00000004050000F6135D80F7000000000500010200000009135D80F900000001050000FC135D80FD000000030CFD9C050F34D104000000020CFD9C090F34D0FE0000000500000004000000050000000500000009135D44F70500010200000009135D80F900000001050000FC135D80FD000000030CFD9C050F34D104000000020CFD9C090F34D0FE00000009000000040000000900000009000000090000000000000002"
theorem small_1557441_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1557441_right_root small_1557441_right_fuel small_1557441_right_count small_1557441_right_encoded = true := by
  decide +kernel
theorem small_1557441_right_covered : CoveredBy scale carrier boxes small_1557441_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1557441_right_root small_1557441_right_fuel small_1557441_right_count small_1557441_right_encoded small_1557441_right_checked

theorem cover_1557441 : CoveredBy scale carrier boxes root_1557441 := by
  apply coveredBy_split_literal root_1557441 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.root_1557442 small_1557441_right_root coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.cover_1557442
  · exact small_1557441_right_covered
#print axioms cover_1557441

def root_1557436 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1557436_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1557436_right_fuel : Nat := 1
def small_1557436_right_count : Nat := 1
def small_1557436_right_encoded : String := "00000004"
theorem small_1557436_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1557436_right_root small_1557436_right_fuel small_1557436_right_count small_1557436_right_encoded = true := by
  decide +kernel
theorem small_1557436_right_covered : CoveredBy scale carrier boxes small_1557436_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1557436_right_root small_1557436_right_fuel small_1557436_right_count small_1557436_right_encoded small_1557436_right_checked

theorem cover_1557436 : CoveredBy scale carrier boxes root_1557436 := by
  apply coveredBy_split_literal root_1557436 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.root_1557441 small_1557436_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.cover_1557441
  · exact small_1557436_right_covered
#print axioms cover_1557436

def root_1557435 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1557435_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1557435_right_fuel : Nat := 20
def small_1557435_right_count : Nat := 103
def small_1557435_right_encoded : String := "1151E9090000000408A913051207010400000002050000F6135D80F70000000005000102135D44F9050000FC135D80FD00000003050000FE00000009000000090000000900000001135D80F900000001050000FC135D80FD00000003050000FE135D810904548A051386710400000002078000F6128A7CF7000000000780010200000009128A7CF900000001078000FC128A7CFD000000030000000500000008128A40F7078001020000000800000008000000000000000900000004135D45090000000404548A051386710400000002078000F6128A7CF700000000000000090000000A00000009135D44FD050000FE000000090000000900000003135D44F705000102135D44F9050000FC0000000A0000000800000001135D80F900000001050000FC135D80FD00000003050000FE135D810904548A05000000081386AD04028000F600000009000000070000000200000004135D45090000000404548A050000000800000007135D44FD050000FE0000000800000008000000030000000012073D04050000F600000009135D44F7000000090000000000000002"
theorem small_1557435_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1557435_right_root small_1557435_right_fuel small_1557435_right_count small_1557435_right_encoded = true := by
  decide +kernel
theorem small_1557435_right_covered : CoveredBy scale carrier boxes small_1557435_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1557435_right_root small_1557435_right_fuel small_1557435_right_count small_1557435_right_encoded small_1557435_right_checked

theorem cover_1557435 : CoveredBy scale carrier boxes root_1557435 := by
  apply coveredBy_split_literal root_1557435 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.root_1557436 small_1557435_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.cover_1557436
  · exact small_1557435_right_covered
#print axioms cover_1557435

def root_1557430 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1557430_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1557430_right_fuel : Nat := 1
def small_1557430_right_count : Nat := 1
def small_1557430_right_encoded : String := "00000003"
theorem small_1557430_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1557430_right_root small_1557430_right_fuel small_1557430_right_count small_1557430_right_encoded = true := by
  decide +kernel
theorem small_1557430_right_covered : CoveredBy scale carrier boxes small_1557430_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1557430_right_root small_1557430_right_fuel small_1557430_right_count small_1557430_right_encoded small_1557430_right_checked

theorem cover_1557430 : CoveredBy scale carrier boxes root_1557430 := by
  apply coveredBy_split_literal root_1557430 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.root_1557435 small_1557430_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.cover_1557435
  · exact small_1557430_right_covered
#print axioms cover_1557430

def root_1554456 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1554456 : CoveredBy scale carrier boxes root_1554456 := by
  apply coveredBy_split_literal root_1554456 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0608.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.root_1557430 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0608.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.cover_1557430
#print axioms cover_1554456

def root_1554451 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1554451_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1554451_right_fuel : Nat := 1
def small_1554451_right_count : Nat := 1
def small_1554451_right_encoded : String := "00000002"
theorem small_1554451_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1554451_right_root small_1554451_right_fuel small_1554451_right_count small_1554451_right_encoded = true := by
  decide +kernel
theorem small_1554451_right_covered : CoveredBy scale carrier boxes small_1554451_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1554451_right_root small_1554451_right_fuel small_1554451_right_count small_1554451_right_encoded small_1554451_right_checked

theorem cover_1554451 : CoveredBy scale carrier boxes root_1554451 := by
  apply coveredBy_split_literal root_1554451 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.root_1554456 small_1554451_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.cover_1554456
  · exact small_1554451_right_covered
#print axioms cover_1554451

def root_1554399 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1554399_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1554399_left_fuel : Nat := 8
def small_1554399_left_count : Nat := 23
def small_1554399_left_encoded : String := "1151E905000000020A0000FC115224FD000000030A0000FE1152250908A912FD12073CFC000000030000000500000005000000041151E90900000004000000051151E8FD0A0000FE000000091151E909000000040000000500000003"
theorem small_1554399_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1554399_left_root small_1554399_left_fuel small_1554399_left_count small_1554399_left_encoded = true := by
  decide +kernel
theorem small_1554399_left_covered : CoveredBy scale carrier boxes small_1554399_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1554399_left_root small_1554399_left_fuel small_1554399_left_count small_1554399_left_encoded small_1554399_left_checked

theorem cover_1554399 : CoveredBy scale carrier boxes root_1554399 := by
  apply coveredBy_split_literal root_1554399 small_1554399_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.root_1554451 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_1554399_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.cover_1554451
#print axioms cover_1554399

def root_1554394 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1554394_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1554394_right_fuel : Nat := 1
def small_1554394_right_count : Nat := 1
def small_1554394_right_encoded : String := "00000001"
theorem small_1554394_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1554394_right_root small_1554394_right_fuel small_1554394_right_count small_1554394_right_encoded = true := by
  decide +kernel
theorem small_1554394_right_covered : CoveredBy scale carrier boxes small_1554394_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1554394_right_root small_1554394_right_fuel small_1554394_right_count small_1554394_right_encoded small_1554394_right_checked

theorem cover_1554394 : CoveredBy scale carrier boxes root_1554394 := by
  apply coveredBy_split_literal root_1554394 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.root_1554399 small_1554394_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.cover_1554399
  · exact small_1554394_right_covered
#print axioms cover_1554394

def root_1570307 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1570307 : CoveredBy scale carrier boxes root_1570307 := by
  apply coveredBy_split_literal root_1570307 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0612.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0613.root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0612.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0613.covered
#print axioms cover_1570307

def root_1570302 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1570302_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1570302_right_fuel : Nat := 1
def small_1570302_right_count : Nat := 1
def small_1570302_right_encoded : String := "00000003"
theorem small_1570302_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1570302_right_root small_1570302_right_fuel small_1570302_right_count small_1570302_right_encoded = true := by
  decide +kernel
theorem small_1570302_right_covered : CoveredBy scale carrier boxes small_1570302_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1570302_right_root small_1570302_right_fuel small_1570302_right_count small_1570302_right_encoded small_1570302_right_checked

theorem cover_1570302 : CoveredBy scale carrier boxes root_1570302 := by
  apply coveredBy_split_literal root_1570302 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.root_1570307 small_1570302_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.cover_1570307
  · exact small_1570302_right_covered
#print axioms cover_1570302

def root_1569500 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1569500_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1569500_left_fuel : Nat := 31
def small_1569500_left_count : Nat := 369
def small_1569500_left_encoded : String := "115224FD000000030A0000FE1152250908A912F912073D0208A91305120701040000000208A912FD12073CFC0000000308A91309120700FE050000F6135D80F7000000000CFD9BF90F350D0204548A05138671040000000200000006000000060000000100000006135D44F700000006000000000000000412073CFE00000004050000F6135D80F7000000000CFD9BF90F350D0204548A0513867104000000020CFD9BFD0F350CFC000000030CFD9C090F34D0FE000000060000000400000006000000061386AD040CFD9BFD0F350CFC000000030CFD9C090F34D0FE0000000500000004000000050000000500000002000000010F34D1020000000100000006135D44F70CFD9BF90F350D0204548A0513867104000000020000000600000006000000010000000600000000120700FC000000060000000312073D0408A912FD12073CFC0000000308A91309120700FE050000F6135D80F7000000000CFD9BF90F350D020CFD9C050F34D1040000000200000006000000050000000100000005135D44F70CFD9BF90F350D020CFD9C050F34D1040000000200000006000000050000000100000006000000000000000412073CFE00000004050000F600000005135D44F70CFD9BF90F350D020CFD9C050F34D104000000020000000600000005000000010000000500000000120700FC00000005000000030000000200000001120701020000000108A9130512070104000000020000000600000006000000041151E9090000000408A912F912073D0208A91305120701040000000208A912FD12073CFC00000003050000F6135D80F700000000050000FE135D81090CFD9BF90F350D0204548A0513867104000000020CFD9BFD0F350CFC000000030C9A87020F8750F90C9A86FC000000050F8750FD078000F600000005128A40F7078000FE00000005128A41090000000400000005000000000000000300000001000000060000000500000005000000010F34D102000000010000000600000004135D4509000000040CFD9BF90F350D0204548A0513867104000000020CFD9BFD0F350CFC000000030C9A87020F8750F90C9A86FC0F878CFD00000003000000050F8750FD078000F6128A7CF700000000000000050000000A00000003000000010F878CF9000000010C9A86FC000000060F8750FD078000F6128A7CF700000000028000FE0000000513D7B10900000004022A458513E1C504000000020DE7CA02000000050000000600000005128A40F7028000FE0000000613D7B10900000004022A458513E1C50400000002000000060000000600000000000000030F34D0FC00000005000000031386AD040CFD9BFD0F350CFC000000030C9A8702000000050F878CF900000001000000050000000500000002000000010F34D1020000000100000006135D44F7050000FE135D81090CFD9BF90F350D0204548A0513867104000000020000000600000006000000010000000600000004135D4509000000040CFD9BF90F350D0204548A0513867104000000020CFD9BFD0F350CFC000000030C9A87020000000A0F878CF900000001000000060F34D0FC00000006000000031386AD040CFD9BFD0F350CFC000000030C9A87020F8750F90C9A86FC000000060000000700000001000000060F34D0FC000000050000000300000002000000010F34D102000000010000000600000000120700FC000000060000000312073D0408A912FD12073CFC00000003050000F6135D80F700000000050000FE00000005135D45090000000400000005135D44F7050000FE135D81090CFD9BF90F350D0200000005000000010000000500000004135D4509000000040CFD9BF90F350D020CFD9C050F34D104000000020CFD9BFD0F350CFC000000030C9A8702000000050F878CF900000001000000060000000500000005000000010F34D102000000010CFD9C050F34D10400000002000000060000000600000000120700FC00000005000000030000000200000001120701020000000108A9130512070104000000020000000600000006"
theorem small_1569500_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1569500_left_root small_1569500_left_fuel small_1569500_left_count small_1569500_left_encoded = true := by
  decide +kernel
theorem small_1569500_left_covered : CoveredBy scale carrier boxes small_1569500_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1569500_left_root small_1569500_left_fuel small_1569500_left_count small_1569500_left_encoded small_1569500_left_checked

theorem cover_1569500 : CoveredBy scale carrier boxes root_1569500 := by
  apply coveredBy_split_literal root_1569500 small_1569500_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.root_1570302 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact small_1569500_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.cover_1570302
#print axioms cover_1569500

def root_1569495 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1569495_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1569495_right_fuel : Nat := 1
def small_1569495_right_count : Nat := 1
def small_1569495_right_encoded : String := "00000002"
theorem small_1569495_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1569495_right_root small_1569495_right_fuel small_1569495_right_count small_1569495_right_encoded = true := by
  decide +kernel
theorem small_1569495_right_covered : CoveredBy scale carrier boxes small_1569495_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1569495_right_root small_1569495_right_fuel small_1569495_right_count small_1569495_right_encoded small_1569495_right_checked

theorem cover_1569495 : CoveredBy scale carrier boxes root_1569495 := by
  apply coveredBy_split_literal root_1569495 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.root_1569500 small_1569495_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.cover_1569500
  · exact small_1569495_right_covered
#print axioms cover_1569495

def root_1569349 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1569349_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1569349_left_fuel : Nat := 15
def small_1569349_left_count : Nat := 69
def small_1569349_left_encoded : String := "1151E905000000020A0000FC115224FD000000030A0000FE000000051151E90900000004000000051151E8FD0A0000FE1152250908A912F912073D0208A91309120700FE050000F600000005135D44F70500010400000005135D8105050000FC000000050000000900000002000000000000000412073CFE00000004050000F600000005135D44F70500010400000005135D8105050000FC0000000500000009000000020000000000000001120701020000000108A91309120700FE000000050000000400000005000000041151E9090000000408A912F912073D02050000F600000005135D44F70000000900000000000000011207010200000001050000F600000005135D44F70000000A0000000000000003"
theorem small_1569349_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1569349_left_root small_1569349_left_fuel small_1569349_left_count small_1569349_left_encoded = true := by
  decide +kernel
theorem small_1569349_left_covered : CoveredBy scale carrier boxes small_1569349_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1569349_left_root small_1569349_left_fuel small_1569349_left_count small_1569349_left_encoded small_1569349_left_checked

theorem cover_1569349 : CoveredBy scale carrier boxes root_1569349 := by
  apply coveredBy_split_literal root_1569349 small_1569349_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.root_1569495 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_1569349_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.cover_1569495
#print axioms cover_1569349

def root_1569343 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1569343_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1569343_left_fuel : Nat := 1
def small_1569343_left_count : Nat := 1
def small_1569343_left_encoded : String := "00000001"
theorem small_1569343_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1569343_left_root small_1569343_left_fuel small_1569343_left_count small_1569343_left_encoded = true := by
  decide +kernel
theorem small_1569343_left_covered : CoveredBy scale carrier boxes small_1569343_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1569343_left_root small_1569343_left_fuel small_1569343_left_count small_1569343_left_encoded small_1569343_left_checked

theorem cover_1569343 : CoveredBy scale carrier boxes root_1569343 := by
  apply coveredBy_split_literal root_1569343 small_1569343_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.root_1569349 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_1569343_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.cover_1569349
#print axioms cover_1569343

def root_1554393 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1554393 : CoveredBy scale carrier boxes root_1554393 := by
  apply coveredBy_split_literal root_1554393 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.root_1554394 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.root_1569343 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.cover_1554394
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.cover_1569343
#print axioms cover_1554393

def root_1554388 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1554388_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1554388_right_fuel : Nat := 1
def small_1554388_right_count : Nat := 1
def small_1554388_right_encoded : String := "00000000"
theorem small_1554388_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1554388_right_root small_1554388_right_fuel small_1554388_right_count small_1554388_right_encoded = true := by
  decide +kernel
theorem small_1554388_right_covered : CoveredBy scale carrier boxes small_1554388_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1554388_right_root small_1554388_right_fuel small_1554388_right_count small_1554388_right_encoded small_1554388_right_checked

theorem cover_1554388 : CoveredBy scale carrier boxes root_1554388 := by
  apply coveredBy_split_literal root_1554388 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.root_1554393 small_1554388_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.cover_1554393
  · exact small_1554388_right_covered
#print axioms cover_1554388

def root_1541972 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1541972 : CoveredBy scale carrier boxes root_1541972 := by
  apply coveredBy_split_literal root_1541972 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.root_1541973 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.root_1554388 coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.cover_1541973
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.cover_1554388
#print axioms cover_1541972

def root_1533408 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1533408 : CoveredBy scale carrier boxes root_1533408 := by
  apply coveredBy_split_literal root_1533408 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.root_1533409 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.root_1541972 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0035.cover_1533409
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.cover_1541972
#print axioms cover_1533408

def root_1578480 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1578480_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1578480_right_fuel : Nat := 27
def small_1578480_right_count : Nat := 441
def small_1578480_right_encoded : String := "1152250908A912F712073CF60000000008A912F912073D0208A91305120701040000000208A912FD12073CFC0000000308A9130912070108000000040000000812073D080CFD9BF70F350CF6000000000CFD9BF90F350D0204548A0513867104000000020CFD9BFD0F350CFC000000030CFD9C090F34D10800000004000000080F350D080C9A86F60F878CF7000000000C9A87020F8750F90000000800000001000000080F8750F70C9A87020F8750F90C9A86FC0000000800000007000000010000000800000000000000040F34D0FC0CFD9C09000000080F350D080C9A86F6000000080F8750F7000000080000000000000004000000031386AD040CFD9BFD000000080F34D0FC000000080000000300000002000000010F34D1020000000104548A0513867104000000020CFD9BFD0F350CFC000000030CFD9C09000000080F350D080C9A86F6000000080F8750F70000000800000000000000040F34D0FC0000000800000003000000080F34D0F60CFD9BF90F350D0204548A0513867104000000020CFD9BFD0F350CFC000000030CFD9C09000000080F350D080C9A87020F8750F9000000080000000100000008000000040F34D0FC000000080000000300000008000000010F34D1020000000104548A0513867104000000020CFD9BFD000000080F34D0FC0000000800000003000000080000000000000004120700FC08A9130912070108000000040000000812073D080CFD9BF70F350CF6000000000CFD9BF90F350D0204548A051386710400000002045489FD00000008138670FC000000080000000300000008000000010F34D1020000000104548A051386710400000002045489FD0000000800000008000000080F34D0F60CFD9BF9000000080F34D102000000010000000800000000000000040000000312073D0408A912FD12073CFC0000000308A913090000000812073D080CFD9BF7000000080F34D0F6000000080000000000000004120700FC00000008000000030000000200000001120701020000000108A91305120701040000000208A912FD12073CFC0000000308A9130912070108000000040000000812073D080CFD9BF70F350CF600000000045489F91386AD0204548A0513867104000000020CFD9BFD0F350CFC000000030CFD9C09000000080F350D080C9A86F6000000080F8750F70000000800000000000000040F34D0FC00000008000000030000000800000001138671020000000104548A0513867104000000020CFD9BFD0F350CFC000000030CFD9C09000000080F350D080C9A86F6000000080F8750F70C9A86FC000000080F8750FD000000080000000300000000000000040F34D0FC0000000800000003000000080F34D0F6045489F91386AD0204548A0513867104000000020CFD9BFD000000080F34D0FC00000008000000030000000800000001138671020000000104548A0513867104000000020CFD9BFD000000080F34D0FC0000000800000003000000080000000000000004120700FC08A9130912070108000000040000000812073D080CFD9BF70F350CF600000000045489F91386AD0204548A051386710400000002045489FD00000008000000090000000800000001138671020000000104548A0500000009000000080F34D0F6045489F9000000080000000500000000000000040000000312073D0408A912FD00000008120700FC000000080000000300000002120700F608A912F912073D0208A91305120701040000000208A912FD12073CFC0000000308A9130912070108000000040000000812073D08045489F71386ACF6000000000CFD9BF90F350D0204548A0513867104000000020CFD9BFD000000080F34D0FC000000080000000300000008000000010F34D1020000000104548A0513867104000000020CFD9BFD000000080000000800000008138670F60CFD9BF90F350D0204548A0513867104000000020CFD9BFD000000080F34D0FC000000050000000300000008000000010F34D102000000010000000A0000000000000004120700FC08A913090000000812073D0800000005000000040000000312073D0408A912FD00000008120700FC00000005000000030000000200000001120701020000000108A91305120701040000000208A912FD12073CFC0000000308A9130912070108000000040000000812073D08045489F71386ACF600000000045489F91386AD0204548A0513867104000000020CFD9BFD000000080000000A0000000800000001138671020000000104548A0513867104000000020CFD9BFD000000080000000A00000008138670F60000000A0000000000000004120700FC08A913090000000812073D08045489F700000005138670F60000000500000000000000040000000312073D0408A912FD00000008120700FC0000000800000003000000020000000000000004"
theorem small_1578480_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1578480_right_root small_1578480_right_fuel small_1578480_right_count small_1578480_right_encoded = true := by
  decide +kernel
theorem small_1578480_right_covered : CoveredBy scale carrier boxes small_1578480_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1578480_right_root small_1578480_right_fuel small_1578480_right_count small_1578480_right_encoded small_1578480_right_checked

theorem cover_1578480 : CoveredBy scale carrier boxes root_1578480 := by
  apply coveredBy_split_literal root_1578480 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0615.root small_1578480_right_root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0615.covered
  · exact small_1578480_right_covered
#print axioms cover_1578480

def root_1578474 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1578474_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1578474_left_fuel : Nat := 1
def small_1578474_left_count : Nat := 1
def small_1578474_left_encoded : String := "00000003"
theorem small_1578474_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1578474_left_root small_1578474_left_fuel small_1578474_left_count small_1578474_left_encoded = true := by
  decide +kernel
theorem small_1578474_left_covered : CoveredBy scale carrier boxes small_1578474_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1578474_left_root small_1578474_left_fuel small_1578474_left_count small_1578474_left_encoded small_1578474_left_checked

theorem cover_1578474 : CoveredBy scale carrier boxes root_1578474 := by
  apply coveredBy_split_literal root_1578474 small_1578474_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.root_1578480 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_1578474_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.cover_1578480
#print axioms cover_1578474

def root_1582464 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1582464_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1582464_right_fuel : Nat := 28
def small_1582464_right_count : Nat := 251
def small_1582464_right_encoded : String := "1152250908A912F712073CF60000000008A912F912073D0208A91305120701040000000208A913091207010800000004050000FC000000080000000612073D08050000FC135D80FD000000030CFD9BF70F350CF6000000000CFD9BF90F350D0204548A0513867104000000020CFD9C090F34D10800000004000000060F350D080C9A86F60F878CF7000000000C9A87020F8750F90C9A87080000000600000006000000010F878CF9000000010C9A87080F87510900000004078000FC000000080000000A000000080F8750F70C9A87020F8750F900000007000000010F878CF9000000010C9A87080F87510900000004078000FC00000008128A40FD00000005000000030000000800000000000000041386AD040CFD9C09000000080F350D080C9A86F6000000080F8750F700000007000000000000000400000002000000010F34D1020000000104548A0513867104000000020CFD9C090F34D10800000004000000050F350D080C9A86F60F878CF7000000000000000A0F8750F70C9A87080F87510900000004078000FC000000080000000A000000080000000000000004000000080F34D0F60CFD9BF90F350D0204548A0513867104000000020CFD9C090000000A0F350D080C9A87020F8750F90C9A87080000000600000006000000010000000A0000000400000008000000010F34D102000000010000000A00000000135D44FD0CFD9BF70F350CF6000000000CFD9BF90F350D0204548A0513867104000000020CFD9C09000000060F350D080C9A86F60F878CF7000000000000000A0F8750F70000000500000000000000041386AD040CFD9C09000000060F350D080000000A0000000400000002000000010F34D102000000010000000A0F34D0F60000000A00000000000000030000000412073D0408A913090000000A12073D08050000FC135D80FD000000030CFD9BF7000000080F34D0F60000000800000000135D44FD0000000A00000003000000040000000200000001120701020000000108A91305120701040000000208A913091207010800000004050000FC000000080000000512073D08050000FC135D80FD000000030CFD9BF70F350CF600000000045489F91386AD0204548A0513867104000000020CFD9C090000000A0F350D080000000A000000040000000800000001138671020000000104548A0513867104000000020CFD9C090000000A0F350D080000000A00000004000000080F34D0F60000000A00000000135D44FD0000000A000000030000000412073D040000000A00000002120700F608A912F912073D0208A91305120701040000000208A913090000000A12073D080000000A000000040000000A0000000112070102000000010000000A0000000000000004"
theorem small_1582464_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1582464_right_root small_1582464_right_fuel small_1582464_right_count small_1582464_right_encoded = true := by
  decide +kernel
theorem small_1582464_right_covered : CoveredBy scale carrier boxes small_1582464_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1582464_right_root small_1582464_right_fuel small_1582464_right_count small_1582464_right_encoded small_1582464_right_checked

theorem cover_1582464 : CoveredBy scale carrier boxes root_1582464 := by
  apply coveredBy_split_literal root_1582464 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0616.root small_1582464_right_root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0616.covered
  · exact small_1582464_right_covered
#print axioms cover_1582464

def root_1582459 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1582459_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1582459_right_fuel : Nat := 1
def small_1582459_right_count : Nat := 1
def small_1582459_right_encoded : String := "00000003"
theorem small_1582459_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1582459_right_root small_1582459_right_fuel small_1582459_right_count small_1582459_right_encoded = true := by
  decide +kernel
theorem small_1582459_right_covered : CoveredBy scale carrier boxes small_1582459_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1582459_right_root small_1582459_right_fuel small_1582459_right_count small_1582459_right_encoded small_1582459_right_checked

theorem cover_1582459 : CoveredBy scale carrier boxes root_1582459 := by
  apply coveredBy_split_literal root_1582459 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.root_1582464 small_1582459_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.cover_1582464
  · exact small_1582459_right_covered
#print axioms cover_1582459

def root_1578473 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1578473 : CoveredBy scale carrier boxes root_1578473 := by
  apply coveredBy_split_literal root_1578473 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.root_1578474 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.root_1582459 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.cover_1578474
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.cover_1582459
#print axioms cover_1578473

def root_1578468 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1578468_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1578468_right_fuel : Nat := 1
def small_1578468_right_count : Nat := 1
def small_1578468_right_encoded : String := "00000002"
theorem small_1578468_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1578468_right_root small_1578468_right_fuel small_1578468_right_count small_1578468_right_encoded = true := by
  decide +kernel
theorem small_1578468_right_covered : CoveredBy scale carrier boxes small_1578468_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1578468_right_root small_1578468_right_fuel small_1578468_right_count small_1578468_right_encoded small_1578468_right_checked

theorem cover_1578468 : CoveredBy scale carrier boxes root_1578468 := by
  apply coveredBy_split_literal root_1578468 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.root_1578473 small_1578468_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.cover_1578473
  · exact small_1578468_right_covered
#print axioms cover_1578468

def root_1578322 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1578322_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1578322_left_fuel : Nat := 13
def small_1578322_left_count : Nat := 69
def small_1578322_left_encoded : String := "1151E905000000020A0000FC115224FD000000030A0001081151E9090000000408A912F712073CF60000000008A912F900000005120701020000000108A912FD00000005120700FC0000000500000003120700F608A912F9000000050000000A000000001152250908A912F712073CF60000000008A912F900000008120701020000000100000008120700F60000000800000000000000041151E8FD0A0001081151E9090000000408A912F712073CF60000000008A912F912073D020500010400000005135D8105050000FC000000050000000A00000002000000010000000A120700F600000005000000001152250908A912F712073CF60000000008A912F9000000080000000A0000000A0000000400000003"
theorem small_1578322_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1578322_left_root small_1578322_left_fuel small_1578322_left_count small_1578322_left_encoded = true := by
  decide +kernel
theorem small_1578322_left_covered : CoveredBy scale carrier boxes small_1578322_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1578322_left_root small_1578322_left_fuel small_1578322_left_count small_1578322_left_encoded small_1578322_left_checked

theorem cover_1578322 : CoveredBy scale carrier boxes root_1578322 := by
  apply coveredBy_split_literal root_1578322 small_1578322_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.root_1578468 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_1578322_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.cover_1578468
#print axioms cover_1578322

def root_1578316 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1578316_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1578316_left_fuel : Nat := 1
def small_1578316_left_count : Nat := 1
def small_1578316_left_encoded : String := "00000001"
theorem small_1578316_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1578316_left_root small_1578316_left_fuel small_1578316_left_count small_1578316_left_encoded = true := by
  decide +kernel
theorem small_1578316_left_covered : CoveredBy scale carrier boxes small_1578316_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1578316_left_root small_1578316_left_fuel small_1578316_left_count small_1578316_left_encoded small_1578316_left_checked

theorem cover_1578316 : CoveredBy scale carrier boxes root_1578316 := by
  apply coveredBy_split_literal root_1578316 small_1578316_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.root_1578322 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_1578316_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.cover_1578322
#print axioms cover_1578316

def root_1576758 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1576758 : CoveredBy scale carrier boxes root_1576758 := by
  apply coveredBy_split_literal root_1576758 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0614.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.root_1578316 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0614.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.cover_1578316
#print axioms cover_1576758

def root_1576752 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1576752_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1576752_left_fuel : Nat := 1
def small_1576752_left_count : Nat := 1
def small_1576752_left_encoded : String := "00000000"
theorem small_1576752_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1576752_left_root small_1576752_left_fuel small_1576752_left_count small_1576752_left_encoded = true := by
  decide +kernel
theorem small_1576752_left_covered : CoveredBy scale carrier boxes small_1576752_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1576752_left_root small_1576752_left_fuel small_1576752_left_count small_1576752_left_encoded small_1576752_left_checked

theorem cover_1576752 : CoveredBy scale carrier boxes root_1576752 := by
  apply coveredBy_split_literal root_1576752 small_1576752_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.root_1576758 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_1576752_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.cover_1576758
#print axioms cover_1576752

def root_1587772 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_1587772 : CoveredBy scale carrier boxes root_1587772 := by
  apply coveredBy_split_literal root_1587772 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0618.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0619.root coord4 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0618.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0619.covered
#print axioms cover_1587772

def root_1587766 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1587766_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1587766_left_fuel : Nat := 1
def small_1587766_left_count : Nat := 1
def small_1587766_left_encoded : String := "00000000"
theorem small_1587766_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1587766_left_root small_1587766_left_fuel small_1587766_left_count small_1587766_left_encoded = true := by
  decide +kernel
theorem small_1587766_left_covered : CoveredBy scale carrier boxes small_1587766_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1587766_left_root small_1587766_left_fuel small_1587766_left_count small_1587766_left_encoded small_1587766_left_checked

theorem cover_1587766 : CoveredBy scale carrier boxes root_1587766 := by
  apply coveredBy_split_literal root_1587766 small_1587766_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.root_1587772 coord0 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_1587766_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.cover_1587772
#print axioms cover_1587766

def root_1587765 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1587765_right_root : ZRayBox := fun j => (#[⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1587765_right_fuel : Nat := 19
def small_1587765_right_count : Nat := 189
def small_1587765_right_encoded : String := "135D44F705000108135D4509000000040CFD9BF90F350D0204548A0513867104000000020CFD9BFD0F350CFC000000030C9A87020000000A0F878CF9000000010C9A86FC0000000A0F8750FD0000000A000000030F34D0FC0000000A000000031386AD040CFD9BFD0F350CFC000000030C9A8702000000070F878CF9000000010C9A86FC0F878CFD00000003028000F60000000700000007000000070F34D0FC000000060000000300000002000000010F34D1020000000104548A0513867104000000020CFD9BFD0F350CFC000000030C9A86FC000000060F8750FD028000F613D7ECF700000000028001080000000613D7ED090AD3577910D13D02022A4585000000090000000600000001000000060000000413D7B0F7028001080000000613D7ED090AD3577900000009000000060000000400000000000000030000000600000006135D81090CFD9BF90F350D0204548A0513867104000000020CFD9BFD0F350CFC000000030C9A8702000000070F878CF9000000010C9A86FC0F878CFD00000003028000F60000000700000007000000070F34D0FC0C9A8702000000070F878CF90000000100000009000000031386AD040CFD9BFD0F350CFC000000030C9A8702000000070F878CF9000000010C9A86FC0F878CFD0000000300000007000000070F34D0FC0C9A8702000000070F878CF900000001028000F600000007000000070000000300000002000000010F34D1020000000104548A0513867104000000020CFD9BFD0F350CFC000000030C9A86FC0F878CFD00000003028000F613D7ECF700000000078001080000000900000009000000090F8750FD028000F613D7ECF70000000007800108128A4109000000040AD3577910D13D02000000070000000110D1010200000001000000090000000713D7B0F70000000500000000000000030F34D0FC00000006000000031386AD040CFD9BFD0F350CFC000000030C9A86FC0F878CFD00000003028000F60000000700000007000000070F34D0FC0000000600000003000000020000000400000000"
theorem small_1587765_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1587765_right_root small_1587765_right_fuel small_1587765_right_count small_1587765_right_encoded = true := by
  decide +kernel
theorem small_1587765_right_covered : CoveredBy scale carrier boxes small_1587765_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1587765_right_root small_1587765_right_fuel small_1587765_right_count small_1587765_right_encoded small_1587765_right_checked

theorem cover_1587765 : CoveredBy scale carrier boxes root_1587765 := by
  apply coveredBy_split_literal root_1587765 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.root_1587766 small_1587765_right_root coord0 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.cover_1587766
  · exact small_1587765_right_covered
#print axioms cover_1587765

def root_1587759 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1587759_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1587759_left_fuel : Nat := 1
def small_1587759_left_count : Nat := 1
def small_1587759_left_encoded : String := "00000003"
theorem small_1587759_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1587759_left_root small_1587759_left_fuel small_1587759_left_count small_1587759_left_encoded = true := by
  decide +kernel
theorem small_1587759_left_covered : CoveredBy scale carrier boxes small_1587759_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1587759_left_root small_1587759_left_fuel small_1587759_left_count small_1587759_left_encoded small_1587759_left_checked

theorem cover_1587759 : CoveredBy scale carrier boxes root_1587759 := by
  apply coveredBy_split_literal root_1587759 small_1587759_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.root_1587765 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_1587759_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.cover_1587765
#print axioms cover_1587759

def root_1587758 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1587758_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1587758_right_fuel : Nat := 14
def small_1587758_right_count : Nat := 51
def small_1587758_right_encoded : String := "120700FC050000F6135D80F7000000000500010800000005135D81090CFD9BF90F350D0204548A051386710400000002045489FD1386ACFC000000030C9A8702000000050F878CF900000001000000060000000500000005000000010F34D102000000010000000600000004135D44F70500010800000006135D81090CFD9BF90F350D0204548A05000000091386AD04045489FD1386ACFC000000030C9A870200000007000000060000000600000002000000010F34D1020000000100000006000000040000000000000003"
theorem small_1587758_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1587758_right_root small_1587758_right_fuel small_1587758_right_count small_1587758_right_encoded = true := by
  decide +kernel
theorem small_1587758_right_covered : CoveredBy scale carrier boxes small_1587758_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1587758_right_root small_1587758_right_fuel small_1587758_right_count small_1587758_right_encoded small_1587758_right_checked

theorem cover_1587758 : CoveredBy scale carrier boxes root_1587758 := by
  apply coveredBy_split_literal root_1587758 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.root_1587759 small_1587758_right_root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.cover_1587759
  · exact small_1587758_right_covered
#print axioms cover_1587758

def root_1587752 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1587752_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_1587752_left_fuel : Nat := 1
def small_1587752_left_count : Nat := 1
def small_1587752_left_encoded : String := "00000002"
theorem small_1587752_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_1587752_left_root small_1587752_left_fuel small_1587752_left_count small_1587752_left_encoded = true := by
  decide +kernel
theorem small_1587752_left_covered : CoveredBy scale carrier boxes small_1587752_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_1587752_left_root small_1587752_left_fuel small_1587752_left_count small_1587752_left_encoded small_1587752_left_checked

theorem cover_1587752 : CoveredBy scale carrier boxes root_1587752 := by
  apply coveredBy_split_literal root_1587752 small_1587752_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.root_1587758 coord2 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_1587752_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036.cover_1587758
#print axioms cover_1587752

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0036
