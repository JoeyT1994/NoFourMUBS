import TaoBundleAssembly0139
import TaoBundleAssembly0140
import TaoBundleChunkBatch0535
import TaoBundleChunkBatch0537
import TaoBundleChunkBatch0538
import TaoBundleChunkBatch0539
import TaoBundleChunkBatch0540
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141
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
  apply coveredBy_split_literal root_5722498 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.root_5722499 small_5722498_right_root coord3 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.cover_5722499
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
  apply coveredBy_split_literal root_5722492 small_5722492_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.root_5722498 coord2 true (16243968)
  · decide +kernel
  · decide +kernel
  · exact small_5722492_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.cover_5722498
#print axioms cover_5722492

def root_5722491 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5722491 : CoveredBy scale carrier boxes root_5722491 := by
  apply coveredBy_split_literal root_5722491 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.root_5722492 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2148.root coord2 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.cover_5722492
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
  apply coveredBy_split_literal root_5722485 small_5722485_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.root_5722491 coord1 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_5722485_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.cover_5722491
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
  apply coveredBy_split_literal root_5722484 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.root_5722485 small_5722484_right_root coord1 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.cover_5722485
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
  apply coveredBy_split_literal root_5722478 small_5722478_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.root_5722484 coord4 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_5722478_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.cover_5722484
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
  apply coveredBy_split_literal root_5722477 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.root_5722478 small_5722477_right_root coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.cover_5722478
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
  apply coveredBy_split_literal root_5722472 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.root_5722477 small_5722472_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.cover_5722477
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
  apply coveredBy_split_literal root_5722471 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.root_5722472 small_5722471_right_root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.cover_5722472
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
  apply coveredBy_split_literal root_5722466 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.root_5722471 small_5722466_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.cover_5722471
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
  apply coveredBy_split_literal root_5722390 small_5722390_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.root_5722466 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_5722390_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.cover_5722466
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
  apply coveredBy_split_literal root_5722385 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.root_5722390 small_5722385_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.cover_5722390
  · exact small_5722385_right_covered
#print axioms cover_5722385

def root_5715933 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5715933 : CoveredBy scale carrier boxes root_5715933 := by
  apply coveredBy_split_literal root_5715933 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.root_5715934 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.root_5722385 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.cover_5715934
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.cover_5722385
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
  apply coveredBy_split_literal root_5715927 small_5715927_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.root_5715933 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_5715927_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.cover_5715933
#print axioms cover_5715927

def root_5715926 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5715926 : CoveredBy scale carrier boxes root_5715926 := by
  apply coveredBy_split_literal root_5715926 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.root_5715927 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2149.root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.cover_5715927
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
  apply coveredBy_split_literal root_5715921 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.root_5715926 small_5715921_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.cover_5715926
  · exact small_5715921_right_covered
#print axioms cover_5715921

def root_5708117 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5708117 : CoveredBy scale carrier boxes root_5708117 := by
  apply coveredBy_split_literal root_5708117 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.root_5708118 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.root_5715921 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.cover_5708118
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.cover_5715921
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
  apply coveredBy_split_literal root_5708111 small_5708111_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.root_5708117 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_5708111_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.cover_5708117
#print axioms cover_5708111

def root_5705341 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5705341 : CoveredBy scale carrier boxes root_5705341 := by
  apply coveredBy_split_literal root_5705341 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2140.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.root_5708111 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2140.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.cover_5708111
#print axioms cover_5705341

def root_5652743 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5652743 : CoveredBy scale carrier boxes root_5652743 := by
  apply coveredBy_split_literal root_5652743 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.root_5652744 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.root_5705341 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0140.cover_5652744
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.cover_5705341
#print axioms cover_5652743

def root_5647565 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5647565 : CoveredBy scale carrier boxes root_5647565 := by
  apply coveredBy_split_literal root_5647565 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.root_5647566 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.root_5652743 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0139.cover_5647566
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.cover_5652743
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
  apply coveredBy_split_literal root_5736522 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.root_5736527 small_5736522_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.cover_5736527
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
  apply coveredBy_split_literal root_5745277 small_5745277_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.root_5745283 coord0 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_5745277_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.cover_5745283
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
  apply coveredBy_split_literal root_5744849 small_5744849_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.root_5745277 coord0 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_5744849_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.cover_5745277
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
  apply coveredBy_split_literal root_5744844 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.root_5744849 small_5744844_right_root coord3 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.cover_5744849
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
  apply coveredBy_split_literal root_5744843 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.root_5744844 small_5744843_right_root coord3 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.cover_5744844
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
  apply coveredBy_split_literal root_5744838 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.root_5744843 small_5744838_right_root coord2 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.cover_5744843
  · exact small_5744838_right_covered
#print axioms cover_5744838

def root_5742646 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5742646 : CoveredBy scale carrier boxes root_5742646 := by
  apply coveredBy_split_literal root_5742646 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2153.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.root_5744838 coord2 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2153.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.cover_5744838
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
  apply coveredBy_split_literal root_5742640 small_5742640_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.root_5742646 coord4 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_5742640_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.cover_5742646
#print axioms cover_5742640

def root_5742600 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5742600_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5742600_left_fuel : Nat := 7
def small_5742600_left_count : Nat := 19
def small_5742600_left_encoded : String := "120700FE05000104135D450500000002050000FC135D8107045489F7000000050000000A000000030000000A135D8105050000FC00000005135D4507000000030000000A0000000200000004"
theorem small_5742600_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5742600_left_root small_5742600_left_fuel small_5742600_left_count small_5742600_left_encoded = true := by
  decide +kernel
theorem small_5742600_left_covered : CoveredBy scale carrier boxes small_5742600_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5742600_left_root small_5742600_left_fuel small_5742600_left_count small_5742600_left_encoded small_5742600_left_checked

theorem cover_5742600 : CoveredBy scale carrier boxes root_5742600 := by
  apply coveredBy_split_literal root_5742600 small_5742600_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.root_5742640 coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_5742600_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.cover_5742640
#print axioms cover_5742600

def root_5742595 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5742595_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5742595_right_fuel : Nat := 1
def small_5742595_right_count : Nat := 1
def small_5742595_right_encoded : String := "00000001"
theorem small_5742595_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5742595_right_root small_5742595_right_fuel small_5742595_right_count small_5742595_right_encoded = true := by
  decide +kernel
theorem small_5742595_right_covered : CoveredBy scale carrier boxes small_5742595_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5742595_right_root small_5742595_right_fuel small_5742595_right_count small_5742595_right_encoded small_5742595_right_checked

theorem cover_5742595 : CoveredBy scale carrier boxes root_5742595 := by
  apply coveredBy_split_literal root_5742595 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.root_5742600 small_5742595_right_root coord1 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.cover_5742600
  · exact small_5742595_right_covered
#print axioms cover_5742595

def root_5742207 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5742207_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5742207_left_fuel : Nat := 26
def small_5742207_left_count : Nat := 179
def small_5742207_left_encoded : String := "12073CF80000000108A91309120700FE000000050000000412073CFE0000000405000104135D450500000002050000FC135D8107045489F70000000513867100000000000CFD9BF9000000050F34D0F80CFD9C09000000050F350CFE000000040C9A86FE0F878D0900000005000000040F87510900000004028001040000000913D7ED05078000FC128A7D07000000050000000300000009000000020000000100000003135D450700000003045489F70000000913867100000000000CFD9BF9000000090F34D0F80CFD9C09000000050000000900000001135D8105050000FC135D8107045489F71386AD000CFD9BF9000000050F34D0F800000005000000010000000013867100000000000CFD9BF90F350CF8000000010CFD9C09000000050F350CFE000000040C9A86F8000000050F8750F900000005000000010F34D0F80CFD9C09000000050F350CFE000000040C9A86FE0F878D0900000005000000040F8751090000000407800104128A410500000002078000FC128A7D070000000500000003128A41070000000300000009128A7D05078000FC128A7D070000000500000003128A410700000003022A45770000000513E1C500000000000AD357790000000510D100F80B4D43FE10804D09000000050000000410801109000000040000000600000001000000020000000100000003135D450700000003045489F71386AD000CFD9BF90F350CF800000001000000090F34D0F80CFD9C090000000500000009000000010000000013867100000000000CFD9BF90F350CF8000000010CFD9C090F34D0FE00000005000000040F350CFE000000040C9A86F800000009000000090F34D0F80CFD9C090F34D0FE00000005000000040F350CFE000000040C9A86FE0F878D090780010400000009128A7D05028000FC13D7ED07022A45770000000500000008000000030000000900000002000000040F87510900000004000000090000000100000002"
theorem small_5742207_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5742207_left_root small_5742207_left_fuel small_5742207_left_count small_5742207_left_encoded = true := by
  decide +kernel
theorem small_5742207_left_covered : CoveredBy scale carrier boxes small_5742207_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5742207_left_root small_5742207_left_fuel small_5742207_left_count small_5742207_left_encoded small_5742207_left_checked

theorem cover_5742207 : CoveredBy scale carrier boxes root_5742207 := by
  apply coveredBy_split_literal root_5742207 small_5742207_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.root_5742595 coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_5742207_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.cover_5742595
#print axioms cover_5742207

def root_5742201 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5742201_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5742201_left_fuel : Nat := 1
def small_5742201_left_count : Nat := 1
def small_5742201_left_encoded : String := "00000000"
theorem small_5742201_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5742201_left_root small_5742201_left_fuel small_5742201_left_count small_5742201_left_encoded = true := by
  decide +kernel
theorem small_5742201_left_covered : CoveredBy scale carrier boxes small_5742201_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5742201_left_root small_5742201_left_fuel small_5742201_left_count small_5742201_left_encoded small_5742201_left_checked

theorem cover_5742201 : CoveredBy scale carrier boxes root_5742201 := by
  apply coveredBy_split_literal root_5742201 small_5742201_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.root_5742207 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_5742201_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.cover_5742207
#print axioms cover_5742201

def root_5742057 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5742057_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5742057_left_fuel : Nat := 20
def small_5742057_left_count : Nat := 71
def small_5742057_left_encoded : String := "12073D0008A912F900000005120700F808A913090000000512073CFE0000000405000104135D450500000002050000FC135D81070CFD9BF7000000050F34D10000000000045489F900000005138670F80CFD9C09000000050F350CFE000000040C9A86FE0000000900000005000000010000000300000009135D8105050000FC135D81070CFD9BF7000000050F34D10000000000045489F900000005138670F80CFD9C09000000050F350CFE000000040C9A86FE000000050F875109000000040780010400000005128A7D0500000005000000020000000100000003135D4507000000030CFD9BF7000000050F34D10000000000045489F900000005138670F80CFD9C09000000050000000900000001000000020000000100000000"
theorem small_5742057_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5742057_left_root small_5742057_left_fuel small_5742057_left_count small_5742057_left_encoded = true := by
  decide +kernel
theorem small_5742057_left_covered : CoveredBy scale carrier boxes small_5742057_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5742057_left_root small_5742057_left_fuel small_5742057_left_count small_5742057_left_encoded small_5742057_left_checked

theorem cover_5742057 : CoveredBy scale carrier boxes root_5742057 := by
  apply coveredBy_split_literal root_5742057 small_5742057_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.root_5742201 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_5742057_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.cover_5742201
#print axioms cover_5742057

def root_5742052 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5742052_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5742052_right_fuel : Nat := 1
def small_5742052_right_count : Nat := 1
def small_5742052_right_encoded : String := "00000004"
theorem small_5742052_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5742052_right_root small_5742052_right_fuel small_5742052_right_count small_5742052_right_encoded = true := by
  decide +kernel
theorem small_5742052_right_covered : CoveredBy scale carrier boxes small_5742052_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5742052_right_root small_5742052_right_fuel small_5742052_right_count small_5742052_right_encoded small_5742052_right_checked

theorem cover_5742052 : CoveredBy scale carrier boxes root_5742052 := by
  apply coveredBy_split_literal root_5742052 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.root_5742057 small_5742052_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.cover_5742057
  · exact small_5742052_right_covered
#print axioms cover_5742052

def root_5753551 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5753551_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(-6291456), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5753551_right_fuel : Nat := 23
def small_5753551_right_count : Nat := 101
def small_5753551_right_encoded : String := "128A410700000003078000FE128A7D09022A457713E20100067ECE790000000912EA58F8064001040000000912FFAD05064000FC12FFAD0708C000FE0000000911FBE9090000000400000009000000030000000900000002000000010000000013E1C50000000000067ECE7912EA94F80000000106400104000000060000000612EA58F80640010412FF710500000002064000FC12FFAD0708C000FE11FC2509011523370000000913F85900000000000569AC3900000006000000050000000400000006000000030000000912FFAD05064000FC12FFAD0708C000FE11FC25090115233713F895000569AC39000000061340D4F806E001040000000912C8210506E000FC12C82107096000FE0000000700000006000000030000000600000002000000010000000013F85900000000000569AC39000000061340D4F8000000060000000100000004000000060000000300000006000000020000000100000004128A410900000004022A457713E20100067ECE790000000612EA58F8064001040000000600000006000000010000000000000006"
theorem small_5753551_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5753551_right_root small_5753551_right_fuel small_5753551_right_count small_5753551_right_encoded = true := by
  decide +kernel
theorem small_5753551_right_covered : CoveredBy scale carrier boxes small_5753551_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5753551_right_root small_5753551_right_fuel small_5753551_right_count small_5753551_right_encoded small_5753551_right_checked

theorem cover_5753551 : CoveredBy scale carrier boxes root_5753551 := by
  apply coveredBy_split_literal root_5753551 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2157.root small_5753551_right_root coord3 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2157.covered
  · exact small_5753551_right_covered
#print axioms cover_5753551

def root_5753545 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5753545_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(4194304), (6291456)⟩, ⟨(14529024), (15552512)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5753545_left_fuel : Nat := 1
def small_5753545_left_count : Nat := 1
def small_5753545_left_encoded : String := "00000002"
theorem small_5753545_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5753545_left_root small_5753545_left_fuel small_5753545_left_count small_5753545_left_encoded = true := by
  decide +kernel
theorem small_5753545_left_covered : CoveredBy scale carrier boxes small_5753545_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5753545_left_root small_5753545_left_fuel small_5753545_left_count small_5753545_left_encoded small_5753545_left_checked

theorem cover_5753545 : CoveredBy scale carrier boxes root_5753545 := by
  apply coveredBy_split_literal root_5753545 small_5753545_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.root_5753551 coord2 true (15552512)
  · decide +kernel
  · decide +kernel
  · exact small_5753545_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.cover_5753551
#print axioms cover_5753545

def root_5753544 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5753544_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(6291456), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5753544_right_fuel : Nat := 26
def small_5753544_right_count : Nat := 363
def small_5753544_right_encoded : String := "128A7D05078000FC128A7D07078000FE128A7D09022A457713E20100067ECE7912EA94F80000000108C0010411FBE9050000000208C000FC0000000A11FBE9070000000308C000FE11FC2509000000050000000411FBE909000000040000000A0000000A12EA58F808C0010411FBE9050000000208C000FC0000000A11FBE9070000000308C000FE11FC2509033F67B70000000A13BBF500000000000569AC390000000A1340D4F80000000A000000010000000411FBE909000000040000000A0000000A000000010000000013E1C50000000000067ECE7912EA94F80000000108C0010411FBE9050000000208C000FC11FC25070000000A0000000311FBE9070000000308C000FE11FC25090115233713F895000793F0B900000005128220F800000006000000010000000000000006000000040000000611FC25050000000A0000000212EA58F808C0010411FBE9050000000208C000FC11FC250708C000FE11FC2509011523370000000A13F85900000000000000000A000000040000000A0000000311FBE9070000000308C000FE11FC25090115233713F895000569AC39134110F8000000010820010412465D0500000002082000FC0000000A000000060000000A1340D4F80820010412465D0500000002082000FC0000000A12465D0700000003096000FE0000000711AA810900000004000000060000000A000000010000000013F85900000000000569AC39134110F8000000010820010400000006000000061340D4F80820010412465D0500000002082000FC12469907096000FE0000000711AA810900000004000000060000000312465D070000000300000006124699050000000800000002000000010000000411FBE909000000040115233713F895000569AC39000000060000000A000000000000000611FC250508C000FC0000000A11FBE9070000000308C000FE11FC2509011523370000000A00000008000000040000000A000000020000000100000004128A410900000004022A457713E20100067ECE790000000A0000000A0000000013E1C50000000000067ECE790000000A12EA58F808C0010411FBE9050000000208C000FC0000000A000000060000000A0000000100000003128A410700000003078000FE128A7D09022A457713E20100067ECE7912EA94F80000000108C0010411FBE905000000020000000911FC2505064000FC12FFAD0708C000FE11FC2509033F67B70000000500000006000000040000000600000003000000060000000212EA58F808C0010411FBE90500000002064000FC12FFAD0708C000FE11FC2509033F67B70000000913BBF500000000000569AC39000000091340D4F80820010412465D050000000200000009124699050000000700000002000000010000000411FBE90900000004033F67B700000009000000060000000312FF71070000000308C000FE000000090000000611FC2505064000FC12FFAD0708C000FE11FC2509033F67B70000000A13BBF500000000000569AC390000000A000000070000000411FBE909000000040000000A0000000312FF71070000000308C000FE11FC2509033F67B70000000900000006000000040000000600000002000000010000000013E1C50000000000067ECE7912EA94F8000000010000000612EA58F808C0010411FBE90500000002064000FC12FFAD0708C000FE11FC25090115233713F895000569AC39000000061340D4F80820010412465D050000000206E000FC12C821070000000600000003000000061246990500000006000000020000000100000000000000060000000400000006000000030000000611FC2505064000FC12FFAD0708C000FE11FC25090115233713F895000569AC390000000600000007000000000000000600000004000000060000000300000006000000020000000100000004128A410900000004022A457713E20100067ECE790000000612EA58F808C00104000000060000000600000001000000000000000600000002"
theorem small_5753544_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5753544_right_root small_5753544_right_fuel small_5753544_right_count small_5753544_right_encoded = true := by
  decide +kernel
theorem small_5753544_right_covered : CoveredBy scale carrier boxes small_5753544_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5753544_right_root small_5753544_right_fuel small_5753544_right_count small_5753544_right_encoded small_5753544_right_checked

theorem cover_5753544 : CoveredBy scale carrier boxes root_5753544 := by
  apply coveredBy_split_literal root_5753544 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.root_5753545 small_5753544_right_root coord2 false (6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.cover_5753545
  · exact small_5753544_right_covered
#print axioms cover_5753544

def root_5753538 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5753538_left_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5753538_left_fuel : Nat := 1
def small_5753538_left_count : Nat := 1
def small_5753538_left_encoded : String := "00000001"
theorem small_5753538_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5753538_left_root small_5753538_left_fuel small_5753538_left_count small_5753538_left_encoded = true := by
  decide +kernel
theorem small_5753538_left_covered : CoveredBy scale carrier boxes small_5753538_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5753538_left_root small_5753538_left_fuel small_5753538_left_count small_5753538_left_encoded small_5753538_left_checked

theorem cover_5753538 : CoveredBy scale carrier boxes root_5753538 := by
  apply coveredBy_split_literal root_5753538 small_5753538_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.root_5753544 coord1 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_5753538_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.cover_5753544
#print axioms cover_5753538

def root_5757626 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5757626_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(6291456), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5757626_right_fuel : Nat := 23
def small_5757626_right_count : Nat := 333
def small_5757626_right_encoded : String := "128A7D05078000FC128A7D07078000FE128A7D09022A457713E20100022A457913E200F80000000108C0010411FBE9050000000208C000FC0000000A11FBE9070000000308C000FE11FC2509033F67B713BC31000000000700000000000000070000000411FBE909000000040000000A0000000A13E1C4F808C0010411FBE9050000000208C000FC11FC25070000000A0000000311FBE9070000000308C000FE0000000711FBE909000000040000000711FC25050000000A00000002000000010000000013E1C50000000000022A457913E200F80000000108C0010411FBE9050000000208C000FC11FC250708C000FE11FC2509011523370000000A13F8590000000000033F67B90000000A000000070000000411FBE909000000040000000A0000000311FBE9070000000308C000FE11FC25090115233713F89500033F67B913BC30F80000000100000007000000070000000013F8590000000000033F67B913BC30F800000001082001040000000700000007000000050000000411FBE909000000040115233713F89500033F67B90000000A00000005000000000000000511FC250508C000FC0000000A11FBE9070000000308C000FE0000000711FBE909000000040000000A0000000213E1C4F808C0010411FBE9050000000208C000FC000000090000000511FC250500000009000000020000000100000004128A410900000004022A457713E20100022A45790000000A13E1C4F80000000A000000010000000013E1C50000000000022A457913E200F80000000108C0010411FBE9050000000208C000FC0000000A11FBE90700000003000000050000000A0000000500000003128A410700000003078000FE128A7D09022A457713E20100022A457913E200F80000000108C0010411FBE90500000002064000FC12FFAD0708C000FE11FC2509033F67B700000007000000070000000411FBE90900000004033F67B713BC3100033F67B90000000A13BBF4F8082001040000000700000007000000010000000013BBF50000000000033F67B913BC30F8000000010820010412465D050000000206E000FC0000000A000000060000000A000000050000000312FF71070000000308C000FE11FC2509033F67B700000007000000070000000411FBE90900000004033F67B713BC3100033F67B900000006000000070000000013BBF50000000000033F67B9000000060000000511FC2505064000FC12FFAD0708C000FE0000000711FBE909000000040000000A0000000312FF71070000000308C000FE0000000711FBE90900000004033F67B700000007000000070000000213E1C4F808C0010411FBE90500000002064000FC12FFAD0708C000FE0000000711FBE9090000000400000005000000030000000711FC25050000000700000002000000010000000013E1C50000000000022A457913E200F80000000108C0010411FBE90500000002064000FC12FFAD0708C000FE11FC25090115233700000007000000050000000411FBE90900000004000000050000000312FF7107000000030000000511FC2505064000FC12FFAD0708C000FE0000000711FBE909000000040115233700000007000000050000000312FF71070000000308C000FE0000000700000005000000020000000500000004128A410900000004022A457713E20100022A457913E200F80000000108C0010411FBE90500000002064000FC12FFAD07064000FE12FFAD09033F67B70000000A000000050000000412FF710900000004000000060000000312FF7107000000030000000611FC2505064000FC0000000A000000060000000200000005000000000000000500000002"
theorem small_5757626_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5757626_right_root small_5757626_right_fuel small_5757626_right_count small_5757626_right_encoded = true := by
  decide +kernel
theorem small_5757626_right_covered : CoveredBy scale carrier boxes small_5757626_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5757626_right_root small_5757626_right_fuel small_5757626_right_count small_5757626_right_encoded small_5757626_right_checked

theorem cover_5757626 : CoveredBy scale carrier boxes root_5757626 := by
  apply coveredBy_split_literal root_5757626 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2158.root small_5757626_right_root coord2 false (6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2158.covered
  · exact small_5757626_right_covered
#print axioms cover_5757626

def root_5757621 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5757621_right_root : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16378880), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5757621_right_fuel : Nat := 1
def small_5757621_right_count : Nat := 1
def small_5757621_right_encoded : String := "00000001"
theorem small_5757621_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5757621_right_root small_5757621_right_fuel small_5757621_right_count small_5757621_right_encoded = true := by
  decide +kernel
theorem small_5757621_right_covered : CoveredBy scale carrier boxes small_5757621_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5757621_right_root small_5757621_right_fuel small_5757621_right_count small_5757621_right_encoded small_5757621_right_checked

theorem cover_5757621 : CoveredBy scale carrier boxes root_5757621 := by
  apply coveredBy_split_literal root_5757621 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.root_5757626 small_5757621_right_root coord1 false (-16378880)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.cover_5757626
  · exact small_5757621_right_covered
#print axioms cover_5757621

def root_5753537 : ZRayBox := fun j => (#[⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5753537 : CoveredBy scale carrier boxes root_5753537 := by
  apply coveredBy_split_literal root_5753537 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.root_5753538 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.root_5757621 coord1 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.cover_5753538
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.cover_5757621
#print axioms cover_5753537

def root_5753531 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5753531_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5753531_left_fuel : Nat := 1
def small_5753531_left_count : Nat := 1
def small_5753531_left_encoded : String := "00000000"
theorem small_5753531_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5753531_left_root small_5753531_left_fuel small_5753531_left_count small_5753531_left_encoded = true := by
  decide +kernel
theorem small_5753531_left_covered : CoveredBy scale carrier boxes small_5753531_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5753531_left_root small_5753531_left_fuel small_5753531_left_count small_5753531_left_encoded small_5753531_left_checked

theorem cover_5753531 : CoveredBy scale carrier boxes root_5753531 := by
  apply coveredBy_split_literal root_5753531 small_5753531_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.root_5753537 coord0 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_5753531_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.cover_5753537
#print axioms cover_5753531

def root_5752621 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5752621_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5752621_left_fuel : Nat := 23
def small_5752621_left_count : Nat := 437
def small_5752621_left_encoded : String := "1386AD00045489F91386ACF80000000107800104128A410500000002078000FC128A7D07078000FE128A7D09067ECE770000000512EA590000000000067ECE790000000512EA58F80640010412FF7105000000020000000912FFAD0508C000FC0000000500000009000000020000000100000004128A410900000004067ECE770000000812EA590000000000067ECE7900000009000000080000000300000009128A7D05078000FC128A7D07078000FE128A7D09067ECE770000000512EA590000000000067ECE790000000512EA58F80000000A0000000100000004128A410900000004067ECE770000000A12EA5900000000000000000A00000003128A410700000003078000FE128A7D09067ECE770000000912EA590000000000067ECE790000000912EA58F808C001040000000911FC2505064000FC0000000A00000009000000020000000100000004128A410900000004067ECE770000000912EA590000000000067ECE790000000912EA58F808C0010411FBE90500000002000000090000000A0000000100000002138670F807800104128A410500000002078000FC128A7D07078000FE128A7D09067ECE7712EA9500022A457913E200F800000001064001040000000512FFAD050000000500000002000000080000000012EA590000000000022A457913E200F8000000010640010412FF71050000000208C000FC11FC2507000000080000000311FBE907000000030000000912FFAD0508C000FC11FC25070000000A0000000311FBE9070000000308C000FE11FC25090569AC37000000091340D50000000000033F67B900000009000000070000000411FBE909000000040569AC37000000081340D50000000000000000080000000213E1C4F80640010412FF71050000000208C000FC000000080000000812FFAD0508C000FC11FC250708C000FE00000006000000080000000311FBE9070000000308C000FE0000000700000008000000020000000100000004128A410900000004067ECE770000000812EA590000000000022A4579000000080000000800000003128A410700000003078000FE128A7D09067ECE770000000912EA590000000000022A45790000000913E1C4F80640010412FF710500000002064000FC12FFAD0708C000FE0000000900000008000000030000000912FFAD05064000FC12FFAD0708C000FE0000000711FBE909000000040569AC37000000081340D500000000000115233900000008000000050000000312FF71070000000308C000FE0000000711FBE9090000000400000009000000020000000100000004128A410900000004067ECE770000000812EA590000000000022A457913E200F800000001064001040000000812FFAD05064000FC00000008000000090000000213E1C4F8064001040000000812FFAD05064000FC00000008000000080000000200000001128A7D05078000FC128A7D07078000FE128A7D09067ECE7712EA9500022A45790000000A13E1C4F80000000A000000010000000012EA590000000000022A457913E200F80000000108C001040000000A0000000A13E1C4F808C0010411FBE9050000000208C000FC0000000A11FBE9070000000308C000FE000000070000000A0000000A0000000100000004128A410900000004067ECE770000000A12EA5900000000000000000A00000003128A410700000003078000FE128A7D09067ECE7712EA9500022A45790000000913E1C4F808C0010411FBE90500000002064000FC12FFAD0700000007000000030000000711FC25050000000700000002000000010000000012EA590000000000022A457913E200F80000000108C0010411FBE90500000002064000FC12FFAD0708C000FE11FC25090569AC3700000007000000070000000411FBE909000000040569AC37000000091340D50000000000033F67B90000000900000007000000030000000911FC2505064000FC12FFAD070000000A0000000312FF71070000000308C000FE0000000711FBE909000000040569AC3700000007000000070000000213E1C4F808C0010411FBE90500000002064000FC12FFAD0708C000FE0000000711FBE9090000000400000007000000030000000711FC250500000007000000020000000100000004128A410900000004067ECE7712EA9500022A457913E200F80000000108C00104000000090000000A13E1C4F808C00104000000080000000A000000010000000012EA590000000000022A457913E200F80000000108C0010411FBE90500000002064000FC0000000A000000090000000A13E1C4F808C0010411FBE90500000002064000FC0000000A12FF710700000003064000FE12FFAD090569AC370000000800000005000000040000000811FC25050000000A0000000200000001000000020000000100000000"
theorem small_5752621_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5752621_left_root small_5752621_left_fuel small_5752621_left_count small_5752621_left_encoded = true := by
  decide +kernel
theorem small_5752621_left_covered : CoveredBy scale carrier boxes small_5752621_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5752621_left_root small_5752621_left_fuel small_5752621_left_count small_5752621_left_encoded small_5752621_left_checked

theorem cover_5752621 : CoveredBy scale carrier boxes root_5752621 := by
  apply coveredBy_split_literal root_5752621 small_5752621_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.root_5753531 coord0 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_5752621_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.cover_5753531
#print axioms cover_5752621

def root_5752616 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5752616_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5752616_right_fuel : Nat := 1
def small_5752616_right_count : Nat := 1
def small_5752616_right_encoded : String := "00000004"
theorem small_5752616_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5752616_right_root small_5752616_right_fuel small_5752616_right_count small_5752616_right_encoded = true := by
  decide +kernel
theorem small_5752616_right_covered : CoveredBy scale carrier boxes small_5752616_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5752616_right_root small_5752616_right_fuel small_5752616_right_count small_5752616_right_encoded small_5752616_right_checked

theorem cover_5752616 : CoveredBy scale carrier boxes root_5752616 := by
  apply coveredBy_split_literal root_5752616 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.root_5752621 small_5752616_right_root coord4 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.cover_5752621
  · exact small_5752616_right_covered
#print axioms cover_5752616

def root_5752615 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5752615_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5752615_right_fuel : Nat := 15
def small_5752615_right_count : Nat := 135
def small_5752615_right_encoded : String := "135D450900000004045489F71386AD00045489F91386ACF80000000107800104128A410500000002078000FC00000008128A410700000003028000FE0000000900000006128A7D05078000FC0000000A128A410700000003028000FE13D7ED09067ECE770000000900000006000000040000000600000002138670F807800104128A41050000000200000008128A7D05078000FC0000000A128A410700000003028000FE13D7ED09067ECE770000000812EA590000000000022A45790000000A0000000800000004000000080000000200000001000000001386710000000000045489F91386ACF80000000107800104128A410500000002078000FC128A7D07028000FE13D7ED09022A457713E20100067ECE790000000600000008000000000000000600000004000000060000000300000006128A7D05078000FC128A7D07028000FE13D7ED09022A45770000000A000000060000000400000006000000030000000600000002138670F807800104128A410500000002078000FC128A7D07028000FE13D7ED09022A45770000000800000005000000040000000800000003128A41070000000300000005128A7D05078000FC128A7D07028000FE13D7ED09022A45770000000A000000050000000413D7B109000000040000000A00000003128A410700000003028000FE13D7ED09022A457713E20100022A45790000000600000005000000000000000500000004000000050000000200000001"
theorem small_5752615_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5752615_right_root small_5752615_right_fuel small_5752615_right_count small_5752615_right_encoded = true := by
  decide +kernel
theorem small_5752615_right_covered : CoveredBy scale carrier boxes small_5752615_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5752615_right_root small_5752615_right_fuel small_5752615_right_count small_5752615_right_encoded small_5752615_right_checked

theorem cover_5752615 : CoveredBy scale carrier boxes root_5752615 := by
  apply coveredBy_split_literal root_5752615 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.root_5752616 small_5752615_right_root coord4 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.cover_5752616
  · exact small_5752615_right_covered
#print axioms cover_5752615

def root_5752610 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5752610_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5752610_right_fuel : Nat := 1
def small_5752610_right_count : Nat := 1
def small_5752610_right_encoded : String := "00000003"
theorem small_5752610_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5752610_right_root small_5752610_right_fuel small_5752610_right_count small_5752610_right_encoded = true := by
  decide +kernel
theorem small_5752610_right_covered : CoveredBy scale carrier boxes small_5752610_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5752610_right_root small_5752610_right_fuel small_5752610_right_count small_5752610_right_encoded small_5752610_right_checked

theorem cover_5752610 : CoveredBy scale carrier boxes root_5752610 := by
  apply coveredBy_split_literal root_5752610 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.root_5752615 small_5752610_right_root coord3 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.cover_5752615
  · exact small_5752610_right_covered
#print axioms cover_5752610

def root_5752609 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5752609_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5752609_right_fuel : Nat := 24
def small_5752609_right_count : Nat := 259
def small_5752609_right_encoded : String := "135D450700000003050000FE135D8109045489F71386AD00045489F900000009138670F807800104128A410500000002028000FC13D7ED07078000FE00000009128A410900000004000000090000000300000009128A7D05028000FC13D7ED07078000FE128A7D09067ECE770000000912EA590000000000022A45790000000913E1C4F808C0010411FBE9050000000203C000FC000000070000000711FC250500000007000000020000000100000004128A410900000004067ECE770000000912EA590000000000022A45790000000913E1C4F808C0010411FBE905000000020000000511FC250503C000FC13A54D07064000FE0000000700000005000000030000000500000002000000010000000313D7B10700000003078000FE00000009128A410900000004000000090000000200000001000000001386710000000000045489F91386ACF80000000107800104128A410500000002028000FC13D7ED07078000FE128A7D09022A4577000000090000000600000004000000060000000300000006128A7D05028000FC13D7ED07078000FE128A7D09022A457713E20100067ECE790000000612EA58F808C0010400000006000000060000000100000000000000060000000400000006000000030000000600000002138670F807800104128A410500000002028000FC13D7ED07078000FE128A7D09022A457713E20100022A45790000000900000005000000000000000500000004128A410900000004000000050000000313D7B10700000003078000FE128A7D09022A457700000009000000050000000400000005128A7D05028000FC13D7ED07078000FE128A7D09022A457713E20100022A457913E200F80000000108C0010411FBE9050000000203C000FC13A54D0708C000FE0000000911FBE9090000000400000006000000030000000911FC250503C000FC13A54D0708C000FE00000007000000060000000313A5110700000003000000060000000200000005000000000000000500000004128A410900000004022A457713E20100022A4579000000060000000500000000000000050000000313D7B10700000003078000FE128A7D09022A457713E20100022A4579000000060000000500000000000000050000000400000006000000020000000100000004135D450900000004045489F71386AD00045489F91386ACF800000001078001040000000600000006138670F807800104128A410500000002028000FC13D7ED07028000FE00000009000000060000000300000006128A7D05028000FC13D7ED07028000FE13D7ED09067ECE7712EA9500022A457900000006000000080000000012EA590000000000022A45790000000600000005000000040000000600000003000000060000000200000001000000001386710000000000045489F90000000600000005"
theorem small_5752609_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5752609_right_root small_5752609_right_fuel small_5752609_right_count small_5752609_right_encoded = true := by
  decide +kernel
theorem small_5752609_right_covered : CoveredBy scale carrier boxes small_5752609_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5752609_right_root small_5752609_right_fuel small_5752609_right_count small_5752609_right_encoded small_5752609_right_checked

theorem cover_5752609 : CoveredBy scale carrier boxes root_5752609 := by
  apply coveredBy_split_literal root_5752609 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.root_5752610 small_5752609_right_root coord3 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.cover_5752610
  · exact small_5752609_right_covered
#print axioms cover_5752609

def root_5752604 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5752604_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5752604_right_fuel : Nat := 1
def small_5752604_right_count : Nat := 1
def small_5752604_right_encoded : String := "00000002"
theorem small_5752604_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5752604_right_root small_5752604_right_fuel small_5752604_right_count small_5752604_right_encoded = true := by
  decide +kernel
theorem small_5752604_right_covered : CoveredBy scale carrier boxes small_5752604_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5752604_right_root small_5752604_right_fuel small_5752604_right_count small_5752604_right_encoded small_5752604_right_checked

theorem cover_5752604 : CoveredBy scale carrier boxes root_5752604 := by
  apply coveredBy_split_literal root_5752604 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.root_5752609 small_5752604_right_root coord2 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.cover_5752609
  · exact small_5752604_right_covered
#print axioms cover_5752604

def root_5750468 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5750468 : CoveredBy scale carrier boxes root_5750468 := by
  apply coveredBy_split_literal root_5750468 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2156.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.root_5752604 coord2 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2156.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.cover_5752604
#print axioms cover_5750468

def root_5750463 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5750463_right_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5750463_right_fuel : Nat := 1
def small_5750463_right_count : Nat := 1
def small_5750463_right_encoded : String := "00000001"
theorem small_5750463_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5750463_right_root small_5750463_right_fuel small_5750463_right_count small_5750463_right_encoded = true := by
  decide +kernel
theorem small_5750463_right_covered : CoveredBy scale carrier boxes small_5750463_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5750463_right_root small_5750463_right_fuel small_5750463_right_count small_5750463_right_encoded small_5750463_right_checked

theorem cover_5750463 : CoveredBy scale carrier boxes root_5750463 := by
  apply coveredBy_split_literal root_5750463 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.root_5750468 small_5750463_right_root coord1 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.cover_5750468
  · exact small_5750463_right_covered
#print axioms cover_5750463

def root_5749741 : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5749741_left_root : ZRayBox := fun j => (#[⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5749741_left_fuel : Nat := 27
def small_5749741_left_count : Nat := 345
def small_5749741_left_encoded : String := "12073CF80000000105000104135D450500000002050000FC135D8107050000FE135D8109045489F71386AD000CFD9BF9000000050F34D0F800000009000000010000000013867100000000000CFD9BF90F350CF8000000010C9A86F800000009000000090F34D0F80280010413D7B10500000002078000FC128A7D07078000FE0000000900000007000000030000000913D7ED05078000FC128A7D07078000FE128A7D09022A45770000000513E1C500000000000AD357790000000510D100F8000000090000000100000004128A410900000004022A457700000009000000060000000300000009000000020000000100000004135D450900000004045489F71386AD000CFD9BF900000009000000080000000013867100000000000CFD9BF9000000060F34D0F8000000060000000100000003135D450700000003050000FE00000009135D450900000004045489F70000000900000006135D8105050000FC135D8107050000FE135D8109045489F71386AD000CFD9BF90F350CF8000000010C9A86F8000000050F8750F900000005000000010F34D0F807800104128A410500000002078000FC128A7D07000000050000000300000009128A7D05078000FC128A7D0700000005000000030000000900000002000000010000000013867100000000000CFD9BF90F350CF8000000010C9A86F80F878CF90000000107800104128A410500000002078000FC128A7D07078000FE00000005000000060000000300000006128A7D05078000FC128A7D07078000FE00000005000000060000000300000006000000020F8750F90780010400000006128A7D05078000FC128A7D07078000FE0000000500000006000000030000000600000002000000010F34D0F807800104128A410500000002078000FC128A7D07078000FE128A7D09022A45770000000513E1C500000000000AD357790000000510D100F80640010412FF71050000000208C000FC11FC250708C000FE0000000500000006000000030000000612FFAD0508C000FC11FC250708C000FE00000005000000060000000300000006000000020000000100000004128A410900000004022A457713E201000AD357790000000510D100F80000000600000001000000000000000600000003128A410700000003078000FE128A7D09022A457700000009000000060000000400000006128A7D05078000FC128A7D07078000FE128A7D09022A45770000000513E1C500000000000AD357790000000510D100F808C0010411FBE9050000000208C000FC11FC250700000005000000030000000611FC25050000000A000000020000000100000004128A410900000004022A457713E201000AD357790000000510D100F80000000600000001000000000000000600000003128A410700000003078000FE128A7D09022A457713E201000AD357790000000510D100F8000000060000000100000000000000060000000400000006000000020000000100000004135D450900000004045489F71386AD000CFD9BF90F350CF8000000010C9A86F80F878CF9000000010780010400000006000000060F8750F900000006000000010F34D0F807800104128A410500000002078000FC128A7D07000000080000000300000006128A7D05078000FC128A7D070000000A000000030000000600000002000000010000000013867100000000000CFD9BF9000000060F34D0F80780010400000006000000060000000100000003135D450700000003050000FE135D8109045489F71386AD00000000090000000013867100000000000CFD9BF9000000060F34D0F80780010400000006000000060000000100000004135D450900000004045489F71386AD000CFD9BF9000000060F34D0F80000000600000001000000000000000600000002"
theorem small_5749741_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5749741_left_root small_5749741_left_fuel small_5749741_left_count small_5749741_left_encoded = true := by
  decide +kernel
theorem small_5749741_left_covered : CoveredBy scale carrier boxes small_5749741_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5749741_left_root small_5749741_left_fuel small_5749741_left_count small_5749741_left_encoded small_5749741_left_checked

theorem cover_5749741 : CoveredBy scale carrier boxes root_5749741 := by
  apply coveredBy_split_literal root_5749741 small_5749741_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.root_5750463 coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_5749741_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.cover_5750463
#print axioms cover_5749741

def root_5749735 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5749735_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5749735_left_fuel : Nat := 1
def small_5749735_left_count : Nat := 1
def small_5749735_left_encoded : String := "00000000"
theorem small_5749735_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5749735_left_root small_5749735_left_fuel small_5749735_left_count small_5749735_left_encoded = true := by
  decide +kernel
theorem small_5749735_left_covered : CoveredBy scale carrier boxes small_5749735_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5749735_left_root small_5749735_left_fuel small_5749735_left_count small_5749735_left_encoded small_5749735_left_checked

theorem cover_5749735 : CoveredBy scale carrier boxes root_5749735 := by
  apply coveredBy_split_literal root_5749735 small_5749735_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.root_5749741 coord0 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_5749735_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.cover_5749741
#print axioms cover_5749735

def root_5749481 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5749481_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5749481_left_fuel : Nat := 20
def small_5749481_left_count : Nat := 117
def small_5749481_left_encoded : String := "12073D0008A912F912073CF80000000105000104135D45050000000200000009135D8105050000FC135D8107050000FE135D81090CFD9BF7000000050F34D100000000000CFD9BF9000000050F34D0F8000000050000000100000004135D4509000000040CFD9BF7000000090F34D100000000000CFD9BF9000000090F34D0F80000000900000001000000030000000900000002120700F805000104135D450500000002050000FC135D8107050000FE00000009000000080000000300000009135D8105050000FC135D8107050000FE135D81090CFD9BF70F350D0000000005000000000F34D10000000000045489F91386ACF8000000010780010400000005128A7D050000000500000002138670F807800104128A410500000002078000FC128A7D07000000080000000300000009128A7D05078000FC128A7D07078000FE128A7D0900000005000000040000000800000003128A410700000003078000FE00000009128A41090000000400000009000000020000000100000004135D4509000000040CFD9BF7000000080F34D10000000000045489F91386ACF800000001000000080000000800000003135D450700000003050000FE00000009135D45090000000400000009000000020000000100000000"
theorem small_5749481_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5749481_left_root small_5749481_left_fuel small_5749481_left_count small_5749481_left_encoded = true := by
  decide +kernel
theorem small_5749481_left_covered : CoveredBy scale carrier boxes small_5749481_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5749481_left_root small_5749481_left_fuel small_5749481_left_count small_5749481_left_encoded small_5749481_left_checked

theorem cover_5749481 : CoveredBy scale carrier boxes root_5749481 := by
  apply coveredBy_split_literal root_5749481 small_5749481_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.root_5749735 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_5749481_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.cover_5749735
#print axioms cover_5749481

def root_5749475 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5749475_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5749475_left_fuel : Nat := 1
def small_5749475_left_count : Nat := 1
def small_5749475_left_encoded : String := "00000004"
theorem small_5749475_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5749475_left_root small_5749475_left_fuel small_5749475_left_count small_5749475_left_encoded = true := by
  decide +kernel
theorem small_5749475_left_covered : CoveredBy scale carrier boxes small_5749475_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5749475_left_root small_5749475_left_fuel small_5749475_left_count small_5749475_left_encoded small_5749475_left_checked

theorem cover_5749475 : CoveredBy scale carrier boxes root_5749475 := by
  apply coveredBy_split_literal root_5749475 small_5749475_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.root_5749481 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_5749475_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.cover_5749481
#print axioms cover_5749475

def root_5742051 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5742051 : CoveredBy scale carrier boxes root_5742051 := by
  apply coveredBy_split_literal root_5742051 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.root_5742052 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.root_5749475 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.cover_5742052
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.cover_5749475
#print axioms cover_5742051

def root_5742045 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5742045_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5742045_left_fuel : Nat := 1
def small_5742045_left_count : Nat := 1
def small_5742045_left_encoded : String := "00000003"
theorem small_5742045_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5742045_left_root small_5742045_left_fuel small_5742045_left_count small_5742045_left_encoded = true := by
  decide +kernel
theorem small_5742045_left_covered : CoveredBy scale carrier boxes small_5742045_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5742045_left_root small_5742045_left_fuel small_5742045_left_count small_5742045_left_encoded small_5742045_left_checked

theorem cover_5742045 : CoveredBy scale carrier boxes root_5742045 := by
  apply coveredBy_split_literal root_5742045 small_5742045_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.root_5742051 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_5742045_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.cover_5742051
#print axioms cover_5742045

def root_5736521 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5736521 : CoveredBy scale carrier boxes root_5736521 := by
  apply coveredBy_split_literal root_5736521 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.root_5736522 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.root_5742045 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.cover_5736522
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.cover_5742045
#print axioms cover_5736521

def root_5736515 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5736515_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5736515_left_fuel : Nat := 1
def small_5736515_left_count : Nat := 1
def small_5736515_left_encoded : String := "00000002"
theorem small_5736515_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5736515_left_root small_5736515_left_fuel small_5736515_left_count small_5736515_left_encoded = true := by
  decide +kernel
theorem small_5736515_left_covered : CoveredBy scale carrier boxes small_5736515_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5736515_left_root small_5736515_left_fuel small_5736515_left_count small_5736515_left_encoded small_5736515_left_checked

theorem cover_5736515 : CoveredBy scale carrier boxes root_5736515 := by
  apply coveredBy_split_literal root_5736515 small_5736515_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.root_5736521 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_5736515_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.cover_5736521
#print axioms cover_5736515

def root_5762321 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5762321 : CoveredBy scale carrier boxes root_5762321 := by
  apply coveredBy_split_literal root_5762321 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2159.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2160.root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2159.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk2160.covered
#print axioms cover_5762321

def root_5762315 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5762315_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5762315_left_fuel : Nat := 1
def small_5762315_left_count : Nat := 1
def small_5762315_left_encoded : String := "00000003"
theorem small_5762315_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5762315_left_root small_5762315_left_fuel small_5762315_left_count small_5762315_left_encoded = true := by
  decide +kernel
theorem small_5762315_left_covered : CoveredBy scale carrier boxes small_5762315_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5762315_left_root small_5762315_left_fuel small_5762315_left_count small_5762315_left_encoded small_5762315_left_checked

theorem cover_5762315 : CoveredBy scale carrier boxes root_5762315 := by
  apply coveredBy_split_literal root_5762315 small_5762315_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.root_5762321 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_5762315_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141.cover_5762321
#print axioms cover_5762315

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0141
