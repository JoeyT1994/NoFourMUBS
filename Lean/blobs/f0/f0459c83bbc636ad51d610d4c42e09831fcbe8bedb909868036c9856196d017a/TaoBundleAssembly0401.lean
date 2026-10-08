import TaoBundleAssembly0395
import TaoBundleAssembly0399
import TaoBundleAssembly0400
import TaoBundleChunkBatch0535
import TaoBundleChunkBatch0537
import TaoBundleChunkBatch0538
import TaoBundleChunkBatch0539
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0401
def root_5722511 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5722511_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5722511_right_fuel : Nat := 19
def small_5722511_right_count : Nat := 99
def small_5722511_right_encoded : String := "1386AD080C9A87000F8750F7078000F80000000900000006000000000F878CF700000000078000F8128A7CF9000000010280010413D7B10500000002078000FC128A7CFD00000003067ECE8912EA5908000000040DE7CA000E5FD8F700000009000000000E6014F70000000008C000F80000000911FBE8F901400104000000090000000900000001000000090000000913D7ED05078000FC128A7CFD00000003067ECE8912EA5908000000040DE7CA00000000060E6014F70000000008C000F811FC24F90000000103C00104000000090000000911FBE8F90000000600000001000000060000000900000002128A40F90280010413D7B10500000002078000FC128A7CFD00000003067ECE8912EA5908000000040DE7CA00000000060E6014F700000000064000F812FFACF9000000010140010413F5D9050000000208C000FC0000000700000006000000060000000600000006128A40FD067ECE8912EA59080000000400000009000000060000000313D7ED05078000FC0000000600000006000000020000000100000004"
theorem small_5722511_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5722511_right_root small_5722511_right_fuel small_5722511_right_count small_5722511_right_encoded = true := by
  decide +kernel
theorem small_5722511_right_covered : CoveredBy scale carrier boxes small_5722511_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5722511_right_root small_5722511_right_fuel small_5722511_right_count small_5722511_right_encoded small_5722511_right_checked

theorem cover_5722511 : CoveredBy scale carrier boxes root_5722511 := by
  apply coveredBy_split_literal root_5722511 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0400.root_5722512 small_5722511_right_root coord4 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0400.cover_5722512
  · exact small_5722511_right_covered
#print axioms cover_5722511

def root_5722506 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5722506_right_root : ZRayBox := fun j => (#[⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5722506_right_fuel : Nat := 1
def small_5722506_right_count : Nat := 1
def small_5722506_right_encoded : String := "00000000"
theorem small_5722506_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5722506_right_root small_5722506_right_fuel small_5722506_right_count small_5722506_right_encoded = true := by
  decide +kernel
theorem small_5722506_right_covered : CoveredBy scale carrier boxes small_5722506_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5722506_right_root small_5722506_right_fuel small_5722506_right_count small_5722506_right_encoded small_5722506_right_checked

theorem cover_5722506 : CoveredBy scale carrier boxes root_5722506 := by
  apply coveredBy_split_literal root_5722506 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0401.root_5722511 small_5722506_right_root coord0 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0401.cover_5722511
  · exact small_5722506_right_covered
#print axioms cover_5722506

def root_5722505 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5722505 : CoveredBy scale carrier boxes root_5722505 := by
  apply coveredBy_split_literal root_5722505 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0401.root_5722506 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2147.root coord0 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0401.cover_5722506
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2147.covered
#print axioms cover_5722505

def root_5722499 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5722499_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5722499_left_fuel : Nat := 1
def small_5722499_left_count : Nat := 1
def small_5722499_left_encoded : String := "00000003"
theorem small_5722499_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5722499_left_root small_5722499_left_fuel small_5722499_left_count small_5722499_left_encoded = true := by
  decide +kernel
theorem small_5722499_left_covered : CoveredBy scale carrier boxes small_5722499_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5722499_left_root small_5722499_left_fuel small_5722499_left_count small_5722499_left_encoded small_5722499_left_checked

theorem cover_5722499 : CoveredBy scale carrier boxes root_5722499 := by
  apply coveredBy_split_literal root_5722499 small_5722499_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0401.root_5722505 coord3 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_5722499_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0401.cover_5722505
#print axioms cover_5722499

def root_5722498 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5722498_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5722498_right_fuel : Nat := 17
def small_5722498_right_count : Nat := 123
def small_5722498_right_encoded : String := "135D44FD0CFD9BF70F350D0004548A0913867108000000040C9A87000F8750F7078000F800000009128A40F90000000900000001000000000F878CF700000000078000F8128A7CF9000000010280010413D7B10500000002028000FC13D7ECFD00000003022A45890000000A000000090000000913D7ED05028000FC13D7ECFD00000003022A458913E1C508000000040DE7CA000000000900000005000000090000000500000002128A40F9028001040000000A00000005000000011386AD080C9A8700000000090F878CF700000000078000F800000009128A40F9000000090000000100000004000000000F34D1000000000004548A091386710800000004078000F8128A7CF9000000010280010413D7B10500000002028000FC13D7ECFD00000003000000080000000800000008128A40F90280010413D7B10500000002028000FC13D7ECFD000000030AD3577710D13D000000000A0000000010D1010000000000000000050000000500000005000000011386AD08078000F800000008128A40F90280010413D7B10500000002028000FC13D7ECFD000000030AD3577710D13D000000000900000000000000080000000813D7ED05028000FC13D7ECFD000000030AD3577710D13D000000000800000000000000080000000500000002000000010000000400000003"
theorem small_5722498_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5722498_right_root small_5722498_right_fuel small_5722498_right_count small_5722498_right_encoded = true := by
  decide +kernel
theorem small_5722498_right_covered : CoveredBy scale carrier boxes small_5722498_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5722498_right_root small_5722498_right_fuel small_5722498_right_count small_5722498_right_encoded small_5722498_right_checked

theorem cover_5722498 : CoveredBy scale carrier boxes root_5722498 := by
  apply coveredBy_split_literal root_5722498 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0401.root_5722499 small_5722498_right_root coord3 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0401.cover_5722499
  · exact small_5722498_right_covered
#print axioms cover_5722498

def root_5722492 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5722492_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16243968)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5722492_left_fuel : Nat := 1
def small_5722492_left_count : Nat := 1
def small_5722492_left_encoded : String := "00000002"
theorem small_5722492_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5722492_left_root small_5722492_left_fuel small_5722492_left_count small_5722492_left_encoded = true := by
  decide +kernel
theorem small_5722492_left_covered : CoveredBy scale carrier boxes small_5722492_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5722492_left_root small_5722492_left_fuel small_5722492_left_count small_5722492_left_encoded small_5722492_left_checked

theorem cover_5722492 : CoveredBy scale carrier boxes root_5722492 := by
  apply coveredBy_split_literal root_5722492 small_5722492_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0401.root_5722498 coord2 true (16243968)
  · decide +kernel
  · decide +kernel
  · exact small_5722492_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0401.cover_5722498
#print axioms cover_5722492

def root_5722491 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5722491 : CoveredBy scale carrier boxes root_5722491 := by
  apply coveredBy_split_literal root_5722491 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0401.root_5722492 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2148.root coord2 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0401.cover_5722492
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2148.covered
#print axioms cover_5722491

def root_5722485 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5722485_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5722485_left_fuel : Nat := 1
def small_5722485_left_count : Nat := 1
def small_5722485_left_encoded : String := "00000001"
theorem small_5722485_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5722485_left_root small_5722485_left_fuel small_5722485_left_count small_5722485_left_encoded = true := by
  decide +kernel
theorem small_5722485_left_covered : CoveredBy scale carrier boxes small_5722485_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5722485_left_root small_5722485_left_fuel small_5722485_left_count small_5722485_left_encoded small_5722485_left_checked

theorem cover_5722485 : CoveredBy scale carrier boxes root_5722485 := by
  apply coveredBy_split_literal root_5722485 small_5722485_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0401.root_5722491 coord1 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_5722485_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0401.cover_5722491
#print axioms cover_5722485

def root_5722484 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5722484_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5722484_right_fuel : Nat := 25
def small_5722484_right_count : Nat := 275
def small_5722484_right_encoded : String := "135D44F905000104135D450500000002050000FC135D80FD000000030CFD9BF70F350D0004548A0913867108000000040C9A87000F8750F700000008000000000F878CF700000000028000F813D7ECF9000000010280010413D7B10500000002078000FC128A7CFD00000003022A458900000008000000060000000A13D7ED05078000FC128A7CFD00000003022A45890000000800000006000000050000000213D7B0F9028001040000000A000000050000000100000006000000000F34D1000000000004548A091386710800000004028000F813D7ECF9000000010280010413D7B10500000002078000FC128A7CFD000000030AD3577710D13D00022A45890000000A000000070000000000000007128A40FD0AD3577710D13D000000000A0000000010D1010000000000000000050000000313D7ED05078000FC128A7CFD000000030AD3577710D13D00022A45890000000513E2010803C000F813A54CF90000000103C0010413A5110500000002000000060000000500000005000000040000000010D1010000000000022A45890000000500000007000000050000000213D7B0F90280010413D7B10500000002078000FC128A7CFD000000030AD3577710D13D000000000A00000000000000070000000500000005000000011386AD08028000F813D7ECF9000000010280010413D7B10500000002078000FC128A7CFD000000030AD3577710D13D00067ECE8912EA59080000000400000006000000060000000000000007128A40FD0AD3577710D13D00067ECE8912EA59080000000403C000F813A54CF9000000010140010413F5D90500000002064000FC00000006000000060000000600000006000000060000000010D1010000000000067ECE8912EA59080000000400000007000000070000000313D7ED05078000FC128A7CFD000000030AD357770000000610D1010000000000067ECE8912EA5908000000040000000600000006128A40FD0AD357770000000610D1010000000000067ECE890000000500000006000000030000000213D7B0F90280010413D7B10500000002078000FC128A7CFD0000000300000006128A40FD0AD357770000000610D10100000000000000000700000003000000060000000100000004135D44FD0CFD9BF70F350D0004548A0913867108000000040C9A87000000000A0000000500000006000000000F34D1000000000004548A09000000051386AD08028000F813D7ECF9000000010280010413D7B10500000002028000FC13D7ECFD000000030AD3577710D13D00067ECE8900000005000000060000000010D1010000000000067ECE8900000005000000080000000500000005000000050000000400000003135D8105050000FC135D80FD000000030CFD9BF70F350D0004548A0913867108000000040000000600000006000000000F34D1000000000004548A0913867108000000040000000500000006135D44FD0CFD9BF7000000050F34D1000000000000000005000000030000000200000001"
theorem small_5722484_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5722484_right_root small_5722484_right_fuel small_5722484_right_count small_5722484_right_encoded = true := by
  decide +kernel
theorem small_5722484_right_covered : CoveredBy scale carrier boxes small_5722484_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5722484_right_root small_5722484_right_fuel small_5722484_right_count small_5722484_right_encoded small_5722484_right_checked

theorem cover_5722484 : CoveredBy scale carrier boxes root_5722484 := by
  apply coveredBy_split_literal root_5722484 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0401.root_5722485 small_5722484_right_root coord1 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0401.cover_5722485
  · exact small_5722484_right_covered
#print axioms cover_5722484

def root_5722478 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5722478_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5722478_left_fuel : Nat := 1
def small_5722478_left_count : Nat := 1
def small_5722478_left_encoded : String := "00000004"
theorem small_5722478_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5722478_left_root small_5722478_left_fuel small_5722478_left_count small_5722478_left_encoded = true := by
  decide +kernel
theorem small_5722478_left_covered : CoveredBy scale carrier boxes small_5722478_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5722478_left_root small_5722478_left_fuel small_5722478_left_count small_5722478_left_encoded small_5722478_left_checked

theorem cover_5722478 : CoveredBy scale carrier boxes root_5722478 := by
  apply coveredBy_split_literal root_5722478 small_5722478_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0401.root_5722484 coord4 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_5722478_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0401.cover_5722484
#print axioms cover_5722478

def root_5722477 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5722477_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5722477_right_fuel : Nat := 20
def small_5722477_right_count : Nat := 187
def small_5722477_right_encoded : String := "12073D08050000F8135D80F90000000105000104135D450500000002050000FC135D80FD000000030CFD9BF70F350D000CFD9C090F34D108000000040C9A8700000000060F878CF700000000078000F800000009128A40F9000000060000000100000009000000000F34D100000000000CFD9C090F34D10800000004078000F800000008128A40F90280010413D7B10500000002078000FC128A7CFD000000030AD3577710D13D000000000600000000000000080000000813D7ED05078000FC128A7CFD00000003000000060000000600000002000000010F350D080000000800000004135D44FD0CFD9BF7000000090F34D100000000000CFD9C09000000080000000800000003135D8105050000FC135D80FD000000030CFD9BF70F350D000CFD9C090F34D10800000004000000060F350D080C9A8700000000060000000A00000004000000000F34D100000000000CFD9C090F34D10800000004078000F800000008128A40F9000000060000000100000008135D44FD0CFD9BF70F350D000CFD9C090F34D108000000040000000600000006000000000F34D10000000000000000080000000300000002135D44F905000104135D450500000002050000FC135D80FD000000030CFD9BF70F350D000CFD9C090F34D108000000040000000600000006000000000F34D100000000000CFD9C090F34D10800000004028000F813D7ECF9000000010280010413D7B10500000002078000FC000000060000000600000006000000060F350D080C9A87080F87510900000004000000060000000600000004135D44FD0CFD9BF70F350D0000000006000000000F34D100000000000CFD9C090F34D10800000004000000060000000600000003135D8105050000FC135D80FD000000030CFD9BF70F350D000CFD9C090F34D108000000040000000600000006000000000F34D100000000000CFD9C090F34D108000000040000000600000006135D44FD0CFD9BF70F350D0000000006000000000000000600000003000000020000000100000004"
theorem small_5722477_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5722477_right_root small_5722477_right_fuel small_5722477_right_count small_5722477_right_encoded = true := by
  decide +kernel
theorem small_5722477_right_covered : CoveredBy scale carrier boxes small_5722477_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5722477_right_root small_5722477_right_fuel small_5722477_right_count small_5722477_right_encoded small_5722477_right_checked

theorem cover_5722477 : CoveredBy scale carrier boxes root_5722477 := by
  apply coveredBy_split_literal root_5722477 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0401.root_5722478 small_5722477_right_root coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0401.cover_5722478
  · exact small_5722477_right_covered
#print axioms cover_5722477

def root_5722472 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5722472_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5722472_right_fuel : Nat := 1
def small_5722472_right_count : Nat := 1
def small_5722472_right_encoded : String := "00000000"
theorem small_5722472_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5722472_right_root small_5722472_right_fuel small_5722472_right_count small_5722472_right_encoded = true := by
  decide +kernel
theorem small_5722472_right_covered : CoveredBy scale carrier boxes small_5722472_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5722472_right_root small_5722472_right_fuel small_5722472_right_count small_5722472_right_encoded small_5722472_right_checked

theorem cover_5722472 : CoveredBy scale carrier boxes root_5722472 := by
  apply coveredBy_split_literal root_5722472 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0401.root_5722477 small_5722472_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0401.cover_5722477
  · exact small_5722472_right_covered
#print axioms cover_5722472

def root_5722471 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5722471_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5722471_right_fuel : Nat := 24
def small_5722471_right_count : Nat := 295
def small_5722471_right_encoded : String := "120701000000000008A913091207010800000004050000F8135D80F90000000105000104135D450500000002050000FC135D80FD00000003045489F71386AD0004548A091386710800000004078000F8128A7CF900000001028001040000000813D7ED050000000800000002128A40F90280010413D7B105000000020000000713D7ED05078000FC128A7CFD00000003000000070000000800000002000000010000000800000000138671000000000004548A091386710800000004078000F800000008000000080000000700000008135D8105050000FC135D80FD00000003045489F71386AD0004548A091386710800000004078000F8128A7CF90000000107800104128A410500000002078000FC128A7CFD000000030000000800000008128A7D05078000FC128A7CFD00000003000000080000000500000002128A40F907800104128A410500000002078000FC128A7CFD00000003067ECE7712EA9500022A45890000000513E2010800000008000000040000000012EA590000000000022A458900000005000000070000000500000005000000011386AD08078000F800000008000000080000000400000000138671000000000004548A091386710800000004078000F800000008128A40F907800104128A410500000002078000FC0000000700000005000000050000000100000008135D44FD045489F700000008000000080000000300000002135D44F905000104135D450500000002050000FC135D80FD00000003045489F71386AD0004548A091386710800000004028000F813D7ECF900000001028001040000000713D7ED05078000FC00000007000000050000000213D7B0F9028001040000000700000005000000011386AD08028000F813D7ECF900000001028001040000000713D7ED05078000FC00000007000000080000000213D7B0F9028001040000000713D7ED05078000FC000000070000000500000002000000010000000400000000138671000000000000000007135D44FD045489F71386AD0004548A09000000051386AD08028000F80000000800000005000000040000000013867100000000000000000800000003135D8105050000FC135D80FD00000003045489F71386AD0004548A09000000051386AD08028000F813D7ECF90000000107800104128A410500000002078000FC128A7CFD00000003067ECE7712EA95000000000600000000000000070000000500000005000000050000000400000000138671000000000004548A09000000051386AD08028000F800000008000000050000000400000005000000020000000112073D08050000F8135D80F90000000100000008135D44F905000104135D450500000002050000FC135D80FD00000003045489F71386AD000CFD9C090F34D10800000004028000F80000000813D7B0F9028001040000000700000006000000010F350D0800000008000000040000000000000008135D44FD045489F71386AD000CFD9C090000000800000008000000000000000800000003135D8105050000FC135D80FD00000003045489F71386AD000CFD9C090F34D1080000000400000006000000060000000013867100000000000000000800000008000000020000000100000004"
theorem small_5722471_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5722471_right_root small_5722471_right_fuel small_5722471_right_count small_5722471_right_encoded = true := by
  decide +kernel
theorem small_5722471_right_covered : CoveredBy scale carrier boxes small_5722471_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5722471_right_root small_5722471_right_fuel small_5722471_right_count small_5722471_right_encoded small_5722471_right_checked

theorem cover_5722471 : CoveredBy scale carrier boxes root_5722471 := by
  apply coveredBy_split_literal root_5722471 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0401.root_5722472 small_5722471_right_root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0401.cover_5722472
  · exact small_5722471_right_covered
#print axioms cover_5722471

def root_5722466 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5722466_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5722466_right_fuel : Nat := 1
def small_5722466_right_count : Nat := 1
def small_5722466_right_encoded : String := "00000004"
theorem small_5722466_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5722466_right_root small_5722466_right_fuel small_5722466_right_count small_5722466_right_encoded = true := by
  decide +kernel
theorem small_5722466_right_covered : CoveredBy scale carrier boxes small_5722466_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5722466_right_root small_5722466_right_fuel small_5722466_right_count small_5722466_right_encoded small_5722466_right_checked

theorem cover_5722466 : CoveredBy scale carrier boxes root_5722466 := by
  apply coveredBy_split_literal root_5722466 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0401.root_5722471 small_5722466_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0401.cover_5722471
  · exact small_5722466_right_covered
#print axioms cover_5722466

def root_5722390 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5722390_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5722390_left_fuel : Nat := 13
def small_5722390_left_count : Nat := 35
def small_5722390_left_encoded : String := "1151E9090000000408A912F712073D00050000F8135D80F90000000105000104135D4505000000020000000900000008135D44F905000104135D45050000000200000009135D8105050000FC135D80FD000000030500010800000008135D81090CFD9BF700000009000000080000000400000008000000020000000100000000120701000000000000000008"
theorem small_5722390_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5722390_left_root small_5722390_left_fuel small_5722390_left_count small_5722390_left_encoded = true := by
  decide +kernel
theorem small_5722390_left_covered : CoveredBy scale carrier boxes small_5722390_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5722390_left_root small_5722390_left_fuel small_5722390_left_count small_5722390_left_encoded small_5722390_left_checked

theorem cover_5722390 : CoveredBy scale carrier boxes root_5722390 := by
  apply coveredBy_split_literal root_5722390 small_5722390_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0401.root_5722466 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_5722390_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0401.cover_5722466
#print axioms cover_5722390

def root_5722385 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5722385_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5722385_right_fuel : Nat := 1
def small_5722385_right_count : Nat := 1
def small_5722385_right_encoded : String := "00000003"
theorem small_5722385_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5722385_right_root small_5722385_right_fuel small_5722385_right_count small_5722385_right_encoded = true := by
  decide +kernel
theorem small_5722385_right_covered : CoveredBy scale carrier boxes small_5722385_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5722385_right_root small_5722385_right_fuel small_5722385_right_count small_5722385_right_encoded small_5722385_right_checked

theorem cover_5722385 : CoveredBy scale carrier boxes root_5722385 := by
  apply coveredBy_split_literal root_5722385 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0401.root_5722390 small_5722385_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0401.cover_5722390
  · exact small_5722385_right_covered
#print axioms cover_5722385

def root_5715933 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5715933 : CoveredBy scale carrier boxes root_5715933 := by
  apply coveredBy_split_literal root_5715933 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0400.root_5715934 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0401.root_5722385 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0400.cover_5715934
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0401.cover_5722385
#print axioms cover_5715933

def root_5715927 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5715927_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5715927_left_fuel : Nat := 1
def small_5715927_left_count : Nat := 1
def small_5715927_left_encoded : String := "00000002"
theorem small_5715927_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5715927_left_root small_5715927_left_fuel small_5715927_left_count small_5715927_left_encoded = true := by
  decide +kernel
theorem small_5715927_left_covered : CoveredBy scale carrier boxes small_5715927_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5715927_left_root small_5715927_left_fuel small_5715927_left_count small_5715927_left_encoded small_5715927_left_checked

theorem cover_5715927 : CoveredBy scale carrier boxes root_5715927 := by
  apply coveredBy_split_literal root_5715927 small_5715927_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0401.root_5715933 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_5715927_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0401.cover_5715933
#print axioms cover_5715927

def root_5715926 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5715926 : CoveredBy scale carrier boxes root_5715926 := by
  apply coveredBy_split_literal root_5715926 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0401.root_5715927 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2149.root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0401.cover_5715927
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2149.covered
#print axioms cover_5715926

def root_5715921 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5715921_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5715921_right_fuel : Nat := 1
def small_5715921_right_count : Nat := 1
def small_5715921_right_encoded : String := "00000001"
theorem small_5715921_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5715921_right_root small_5715921_right_fuel small_5715921_right_count small_5715921_right_encoded = true := by
  decide +kernel
theorem small_5715921_right_covered : CoveredBy scale carrier boxes small_5715921_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5715921_right_root small_5715921_right_fuel small_5715921_right_count small_5715921_right_encoded small_5715921_right_checked

theorem cover_5715921 : CoveredBy scale carrier boxes root_5715921 := by
  apply coveredBy_split_literal root_5715921 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0401.root_5715926 small_5715921_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0401.cover_5715926
  · exact small_5715921_right_covered
#print axioms cover_5715921

def root_5708117 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5708117 : CoveredBy scale carrier boxes root_5708117 := by
  apply coveredBy_split_literal root_5708117 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0399.root_5708118 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0401.root_5715921 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0399.cover_5708118
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0401.cover_5715921
#print axioms cover_5708117

def root_5708111 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5708111_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5708111_left_fuel : Nat := 1
def small_5708111_left_count : Nat := 1
def small_5708111_left_encoded : String := "00000000"
theorem small_5708111_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5708111_left_root small_5708111_left_fuel small_5708111_left_count small_5708111_left_encoded = true := by
  decide +kernel
theorem small_5708111_left_covered : CoveredBy scale carrier boxes small_5708111_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5708111_left_root small_5708111_left_fuel small_5708111_left_count small_5708111_left_encoded small_5708111_left_checked

theorem cover_5708111 : CoveredBy scale carrier boxes root_5708111 := by
  apply coveredBy_split_literal root_5708111 small_5708111_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0401.root_5708117 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5708111_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0401.cover_5708117
#print axioms cover_5708111

def root_5705341 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5705341 : CoveredBy scale carrier boxes root_5705341 := by
  apply coveredBy_split_literal root_5705341 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2140.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0401.root_5708111 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2140.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0401.cover_5708111
#print axioms cover_5705341

def root_5652743 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5652743 : CoveredBy scale carrier boxes root_5652743 := by
  apply coveredBy_split_literal root_5652743 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0399.root_5652744 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0401.root_5705341 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0399.cover_5652744
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0401.cover_5705341
#print axioms cover_5652743

def root_5647565 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5647565 : CoveredBy scale carrier boxes root_5647565 := by
  apply coveredBy_split_literal root_5647565 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0395.root_5647566 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0401.root_5652743 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0395.cover_5647566
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0401.cover_5652743
#print axioms cover_5647565

def root_5736527 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5736527 : CoveredBy scale carrier boxes root_5736527 := by
  apply coveredBy_split_literal root_5736527 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2151.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2152.root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2151.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2152.covered
#print axioms cover_5736527

def root_5736522 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5736522_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5736522_right_fuel : Nat := 1
def small_5736522_right_count : Nat := 1
def small_5736522_right_encoded : String := "00000003"
theorem small_5736522_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5736522_right_root small_5736522_right_fuel small_5736522_right_count small_5736522_right_encoded = true := by
  decide +kernel
theorem small_5736522_right_covered : CoveredBy scale carrier boxes small_5736522_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5736522_right_root small_5736522_right_fuel small_5736522_right_count small_5736522_right_encoded small_5736522_right_checked

theorem cover_5736522 : CoveredBy scale carrier boxes root_5736522 := by
  apply coveredBy_split_literal root_5736522 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0401.root_5736527 small_5736522_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0401.cover_5736527
  · exact small_5736522_right_covered
#print axioms cover_5736522

def root_5745283 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5745283 : CoveredBy scale carrier boxes root_5745283 := by
  apply coveredBy_split_literal root_5745283 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2154.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2155.root coord1 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2154.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2155.covered
#print axioms cover_5745283

def root_5745277 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5745277_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5745277_left_fuel : Nat := 1
def small_5745277_left_count : Nat := 1
def small_5745277_left_encoded : String := "00000000"
theorem small_5745277_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5745277_left_root small_5745277_left_fuel small_5745277_left_count small_5745277_left_encoded = true := by
  decide +kernel
theorem small_5745277_left_covered : CoveredBy scale carrier boxes small_5745277_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5745277_left_root small_5745277_left_fuel small_5745277_left_count small_5745277_left_encoded small_5745277_left_checked

theorem cover_5745277 : CoveredBy scale carrier boxes root_5745277 := by
  apply coveredBy_split_literal root_5745277 small_5745277_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0401.root_5745283 coord0 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_5745277_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0401.cover_5745283
#print axioms cover_5745277

def root_5744849 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5744849_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5744849_left_fuel : Nat := 23
def small_5744849_left_count : Nat := 207
def small_5744849_left_encoded : String := "1386AD00045489F91386ACF8000000010CFD9C09000000050F350CFE000000040C9A86FE0F878D0900000005000000040F8751090000000407800104128A410500000002078000FC0000000500000009128A7D05078000FC00000005128A410700000003067ECE770000000512EA590000000000067ECE790000000512EA58F80B4D43FE000000051080110900000004000000090000000100000002138670F80CFD9C090F34D0FE00000005000000040F350CFE000000040C9A86FE0F878D0907800104128A410500000002078000FC128A7D07067ECE770000000512EA590000000000022A4579000000050000000600000003128A410700000003067ECE770000000512EA590000000000022A45790000000500000007128A7D05078000FC128A7D07067ECE77000000050000000700000003128A410700000003067ECE77000000050000000700000002000000040F8751090000000407800104128A410500000002078000FC128A7D07067ECE7712EA9500022A45790000000513E1C4F800000006000000010000000012EA590000000000022A457913E200F8000000010B4D43FE10804D09000000050000000410801109000000040640010412FF71050000000208C000FC11FC250700000005000000030000000912FFAD0508C000FC11FC2507000000050000000311FBE907000000030569AC3700000005000000070000000213E1C4F80B4D43FE0000000610801109000000040640010400000006000000060000000100000003128A410700000003067ECE770000000912EA590000000000022A45790000000913E1C4F80B4D43FE00000007108011090000000406400104000000070000000700000001128A7D05078000FC128A7D07067ECE7712EA9500022A457900000005000000070000000012EA590000000000022A457913E200F8000000010B4D43FE00000007108011090000000408C0010411FBE9050000000208C000FC0000000500000007000000070000000700000003128A410700000003067ECE7712EA9500022A457900000005000000070000000012EA590000000000022A457913E200F8000000010B4D43FE00000007108011090000000408C00104000000070000000700000007000000020000000100000000"
theorem small_5744849_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5744849_left_root small_5744849_left_fuel small_5744849_left_count small_5744849_left_encoded = true := by
  decide +kernel
theorem small_5744849_left_covered : CoveredBy scale carrier boxes small_5744849_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5744849_left_root small_5744849_left_fuel small_5744849_left_count small_5744849_left_encoded small_5744849_left_checked

theorem cover_5744849 : CoveredBy scale carrier boxes root_5744849 := by
  apply coveredBy_split_literal root_5744849 small_5744849_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0401.root_5745277 coord0 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_5744849_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0401.cover_5745277
#print axioms cover_5744849

def root_5744844 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5744844_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5744844_right_fuel : Nat := 1
def small_5744844_right_count : Nat := 1
def small_5744844_right_encoded : String := "00000003"
theorem small_5744844_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5744844_right_root small_5744844_right_fuel small_5744844_right_count small_5744844_right_encoded = true := by
  decide +kernel
theorem small_5744844_right_covered : CoveredBy scale carrier boxes small_5744844_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5744844_right_root small_5744844_right_fuel small_5744844_right_count small_5744844_right_encoded small_5744844_right_checked

theorem cover_5744844 : CoveredBy scale carrier boxes root_5744844 := by
  apply coveredBy_split_literal root_5744844 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0401.root_5744849 small_5744844_right_root coord3 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0401.cover_5744849
  · exact small_5744844_right_covered
#print axioms cover_5744844

def root_5744843 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5744843_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5744843_right_fuel : Nat := 20
def small_5744843_right_count : Nat := 217
def small_5744843_right_encoded : String := "135D450700000003045489F71386AD00045489F91386ACF8000000010CFD9C09000000050F350CFE000000040C9A86FE000000090F8751090000000400000009138670F80CFD9C090F34D0FE078001040000000A128A7D05028000FC000000050000000700000002000000040F350CFE000000040C9A86FE0F878D0907800104128A41050000000200000009128A7D05028000FC13D7ED07067ECE770000000700000007000000030000000900000002000000040F8751090000000407800104128A41050000000200000009128A7D05028000FC13D7ED07067ECE770000000912EA590000000000022A4579000000090000000700000003000000090000000200000001000000001386710000000000045489F91386ACF8000000010CFD9C090F34D0FE078001040000000A00000008000000040F350CFE000000040C9A86FE0F878D0907800104128A4105000000020000000A128A7D05028000FC13D7ED07022A457713E20100067ECE79000000050000000700000000000000080000000313D7B107000000030000000800000002000000040F8751090000000407800104128A410500000002028000FC13D7ED07022A45770000000913E1C50000000000067ECE79000000090000000A0000000300000009128A7D05028000FC13D7ED07022A457713E20100067ECE790000000912EA58F80B4D43FE00000009108011090000000400000009000000010000000013E1C50000000000067ECE790000000812EA58F800000008000000010000000313D7B10700000003022A45770000000913E1C50000000000067ECE79000000060000000800000002138670F80CFD9C090F34D0FE0000000A000000040F350CFE000000040C9A86FE0F878D09078001040000000A128A7D05028000FC000000070000000700000002000000040F8751090000000407800104128A410500000002028000FC13D7ED07022A457713E20100022A45790000000913E1C4F80B4D43FE0000000710801109000000040000000700000001000000000000000A000000030000000A128A7D05028000FC13D7ED07022A457713E20100022A457913E200F8000000010B4D43FE00000007108011090000000400000007000000070000000013E1C50000000000022A457900000008000000070000000313D7B10700000003022A457700000007000000070000000200000001"
theorem small_5744843_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5744843_right_root small_5744843_right_fuel small_5744843_right_count small_5744843_right_encoded = true := by
  decide +kernel
theorem small_5744843_right_covered : CoveredBy scale carrier boxes small_5744843_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5744843_right_root small_5744843_right_fuel small_5744843_right_count small_5744843_right_encoded small_5744843_right_checked

theorem cover_5744843 : CoveredBy scale carrier boxes root_5744843 := by
  apply coveredBy_split_literal root_5744843 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0401.root_5744844 small_5744843_right_root coord3 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0401.cover_5744844
  · exact small_5744843_right_covered
#print axioms cover_5744843

def root_5744838 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5744838_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5744838_right_fuel : Nat := 1
def small_5744838_right_count : Nat := 1
def small_5744838_right_encoded : String := "00000002"
theorem small_5744838_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5744838_right_root small_5744838_right_fuel small_5744838_right_count small_5744838_right_encoded = true := by
  decide +kernel
theorem small_5744838_right_covered : CoveredBy scale carrier boxes small_5744838_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5744838_right_root small_5744838_right_fuel small_5744838_right_count small_5744838_right_encoded small_5744838_right_checked

theorem cover_5744838 : CoveredBy scale carrier boxes root_5744838 := by
  apply coveredBy_split_literal root_5744838 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0401.root_5744843 small_5744838_right_root coord2 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0401.cover_5744843
  · exact small_5744838_right_covered
#print axioms cover_5744838

def root_5742646 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5742646 : CoveredBy scale carrier boxes root_5742646 := by
  apply coveredBy_split_literal root_5742646 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2153.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0401.root_5744838 coord2 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2153.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0401.cover_5744838
#print axioms cover_5742646

def root_5742640 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5742640_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5742640_left_fuel : Nat := 1
def small_5742640_left_count : Nat := 1
def small_5742640_left_encoded : String := "00000004"
theorem small_5742640_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5742640_left_root small_5742640_left_fuel small_5742640_left_count small_5742640_left_encoded = true := by
  decide +kernel
theorem small_5742640_left_covered : CoveredBy scale carrier boxes small_5742640_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5742640_left_root small_5742640_left_fuel small_5742640_left_count small_5742640_left_encoded small_5742640_left_checked

theorem cover_5742640 : CoveredBy scale carrier boxes root_5742640 := by
  apply coveredBy_split_literal root_5742640 small_5742640_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0401.root_5742646 coord4 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_5742640_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0401.cover_5742646
#print axioms cover_5742640

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0401
