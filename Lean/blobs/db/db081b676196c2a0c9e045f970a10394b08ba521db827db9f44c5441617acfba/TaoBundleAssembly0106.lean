import TaoBundleAssembly0104
import TaoBundleAssembly0105
import TaoBundleChunkBatch0390
import TaoBundleChunkBatch0391
import TaoBundleChunkBatch0392
import TaoBundleChunkBatch0393
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106
def root_4153419 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4153419_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4153419_left_fuel : Nat := 23
def small_4153419_left_count : Nat := 235
def small_4153419_left_encoded : String := "12073D08050000F6135D8101050000FA135D81050CFD9BF90F350D020CFD9BFD0F350D060CFD9BFF0F350D080C9A87020F8750F90C9A87060F8750FD0C9A870800000007000000070000000300000007000000010F878CF90000000100000009000000040F34D108000000040C9A87020F8750F90C9A87060F8750FD078000F6128A7D01078000FA128A7D050AD3577F0000000710D10108000000040B4D44020000000500000008000000020000000700000000128A410100000000078000FA00000009128A4105000000020AD3577F0000000710D101080000000400000007000000030F878CFD00000003078000F600000007128A410100000000078000FA128A7D05000000060000000200000007000000010F878CF9000000010C9A87060F8750FD078000F6128A7D01078000FA00000009128A410500000002000000070000000000000009000000030F878CFD00000003078000F6128A7D01000000070000000000000009000000030F34D106000000030CFD9BFF000000070F34D108000000040C9A8702000000070F878CF90000000100000007000000010F34D102000000010CFD9BFD0F350D060CFD9BFF000000090F34D108000000040C9A8706000000090F878CFD0000000300000009000000030F34D106000000030000000A00000002135D4505000000020CFD9BF90F350D020CFD9BFD0F350D060CFD9BFF000000070F34D108000000040C9A8702000000070F878CF90000000100000007000000030F34D1060000000300000007000000010F34D102000000010CFD9BFD0F350D060CFD9BFF000000070F34D108000000040C9A87060F8750FD000000070000000300000007000000030F34D106000000030000000700000000135D450100000000050000FA135D81050CFD9BF90F350D020CFD9BFD0F350D060CFD9BFF000000090F34D108000000040C9A87020F8750F90C9A8706000000090F878CFD00000003000000090000000100000009000000030F34D106000000030CFD9BFF000000090F34D108000000040C9A87020F8750F9000000090000000100000009000000010F34D102000000010000000900000002135D4505000000020CFD9BF90F350D020CFD9BFD0F350D060CFD9BFF0F350D0800000007000000040F34D108000000040C9A87020F8750F90C9A87060F8750FD028000F600000007000000070000000300000007000000010F878CF90000000100000009000000030F34D1060000000300000007000000010F34D102000000010CFD9BFD0F350D0600000009000000030000000900000004"
theorem small_4153419_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4153419_left_root small_4153419_left_fuel small_4153419_left_count small_4153419_left_encoded = true := by
  decide +kernel
theorem small_4153419_left_covered : CoveredBy scale carrier boxes small_4153419_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4153419_left_root small_4153419_left_fuel small_4153419_left_count small_4153419_left_encoded small_4153419_left_checked

theorem cover_4153419 : CoveredBy scale carrier boxes root_4153419 := by
  apply coveredBy_split_literal root_4153419 small_4153419_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0105.root_4153927 coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4153419_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0105.cover_4153927
#print axioms cover_4153419

def root_4153414 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4153414_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4153414_right_fuel : Nat := 1
def small_4153414_right_count : Nat := 1
def small_4153414_right_encoded : String := "00000003"
theorem small_4153414_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4153414_right_root small_4153414_right_fuel small_4153414_right_count small_4153414_right_encoded = true := by
  decide +kernel
theorem small_4153414_right_covered : CoveredBy scale carrier boxes small_4153414_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4153414_right_root small_4153414_right_fuel small_4153414_right_count small_4153414_right_encoded small_4153414_right_checked

theorem cover_4153414 : CoveredBy scale carrier boxes root_4153414 := by
  apply coveredBy_split_literal root_4153414 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.root_4153419 small_4153414_right_root coord3 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.cover_4153419
  · exact small_4153414_right_covered
#print axioms cover_4153414

def root_4153413 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4153413_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4153413_right_fuel : Nat := 21
def small_4153413_right_count : Nat := 93
def small_4153413_right_encoded : String := "120701060000000308A912FF12073D08050000F6135D8101050000FA135D81050CFD9BF90F350D02045489FD00000007000000070000000100000007000000020000000700000000135D450100000000050000FA135D81050CFD9BF90F350D02045489FD1386AD060CFD9BFF000000070F34D108000000040000000700000003138671060000000300000007000000010F34D10200000001000000090000000200000007000000041207010800000004050000F6135D8101050000FA135D81050CFD9BF90F350D02045489FD1386AD06045489FF1386AD080C9A8702000000070F878CF900000001000000070000000413867108000000040C9A87020F8750F9078000F6128A7D01078000FA128A7D05067ECE7D0000000700000007000000020000000500000000000000050000000100000005000000031386710600000003045489FF00000007138671080000000400000005000000010F34D102000000010000000500000002000000050000000000000005"
theorem small_4153413_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4153413_right_root small_4153413_right_fuel small_4153413_right_count small_4153413_right_encoded = true := by
  decide +kernel
theorem small_4153413_right_covered : CoveredBy scale carrier boxes small_4153413_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4153413_right_root small_4153413_right_fuel small_4153413_right_count small_4153413_right_encoded small_4153413_right_checked

theorem cover_4153413 : CoveredBy scale carrier boxes root_4153413 := by
  apply coveredBy_split_literal root_4153413 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.root_4153414 small_4153413_right_root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.cover_4153414
  · exact small_4153413_right_covered
#print axioms cover_4153413

def root_4153408 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4153408_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4153408_right_fuel : Nat := 1
def small_4153408_right_count : Nat := 1
def small_4153408_right_encoded : String := "00000001"
theorem small_4153408_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4153408_right_root small_4153408_right_fuel small_4153408_right_count small_4153408_right_encoded = true := by
  decide +kernel
theorem small_4153408_right_covered : CoveredBy scale carrier boxes small_4153408_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4153408_right_root small_4153408_right_fuel small_4153408_right_count small_4153408_right_encoded small_4153408_right_checked

theorem cover_4153408 : CoveredBy scale carrier boxes root_4153408 := by
  apply coveredBy_split_literal root_4153408 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.root_4153413 small_4153408_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.cover_4153413
  · exact small_4153408_right_covered
#print axioms cover_4153408

def root_4153407 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4153407_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4153407_right_fuel : Nat := 23
def small_4153407_right_count : Nat := 117
def small_4153407_right_encoded : String := "120701020000000108A912FD12073D0608A912FF12073D08050000F6135D8101050000FA135D8105045489F91386AD020CFD9BFD0F350D06000000090000000300000009000000010000000900000002135D450500000002045489F91386AD020CFD9BFD0F350D060CFD9BFF000000070F34D108000000040000000700000003000000070000000113867102000000010CFD9BFD0F350D0600000009000000030000000700000000135D450100000000050000FA0000000900000009000000041207010800000004050000F6135D8101050000FA135D8105045489F91386AD020CFD9BFD0F350D06045489FF1386AD080C9A8706000000090F878CFD00000003000000090000000413867108000000040C9A87060F8750FD078000F6128A7D01078000FA128A7D05067ECE790000000900000009000000020000000500000000000000050000000300000005000000030F34D10600000003000000050000000113867102000000010CFD9BFD0F350D06045489FF00000009138671080000000400000005000000030F34D10600000003000000050000000200000005000000000000000500000003120701060000000308A912FF12073D08050000F6000000070000000500000004120701080000000400000005"
theorem small_4153407_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4153407_right_root small_4153407_right_fuel small_4153407_right_count small_4153407_right_encoded = true := by
  decide +kernel
theorem small_4153407_right_covered : CoveredBy scale carrier boxes small_4153407_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4153407_right_root small_4153407_right_fuel small_4153407_right_count small_4153407_right_encoded small_4153407_right_checked

theorem cover_4153407 : CoveredBy scale carrier boxes root_4153407 := by
  apply coveredBy_split_literal root_4153407 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.root_4153408 small_4153407_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.cover_4153408
  · exact small_4153407_right_covered
#print axioms cover_4153407

def root_4153401 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4153401_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4153401_left_fuel : Nat := 1
def small_4153401_left_count : Nat := 1
def small_4153401_left_encoded : String := "00000004"
theorem small_4153401_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4153401_left_root small_4153401_left_fuel small_4153401_left_count small_4153401_left_encoded = true := by
  decide +kernel
theorem small_4153401_left_covered : CoveredBy scale carrier boxes small_4153401_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4153401_left_root small_4153401_left_fuel small_4153401_left_count small_4153401_left_encoded small_4153401_left_checked

theorem cover_4153401 : CoveredBy scale carrier boxes root_4153401 := by
  apply coveredBy_split_literal root_4153401 small_4153401_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.root_4153407 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_4153401_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.cover_4153407
#print axioms cover_4153401

def root_4153319 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4153319_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4153319_left_fuel : Nat := 14
def small_4153319_left_count : Nat := 37
def small_4153319_left_encoded : String := "1151E8FF08A912F912073D0208A912FD12073D06050000F6135D8101050000FA135D810505000108135D44FF0000000700000004135D80FF000000040CFD9BF90F350D02000000070000000100000007000000020000000700000000135D450100000000050000FA0000000900000009000000031207010600000003000000070000000112070102000000010000000900000004"
theorem small_4153319_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4153319_left_root small_4153319_left_fuel small_4153319_left_count small_4153319_left_encoded = true := by
  decide +kernel
theorem small_4153319_left_covered : CoveredBy scale carrier boxes small_4153319_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4153319_left_root small_4153319_left_fuel small_4153319_left_count small_4153319_left_encoded small_4153319_left_checked

theorem cover_4153319 : CoveredBy scale carrier boxes root_4153319 := by
  apply coveredBy_split_literal root_4153319 small_4153319_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.root_4153401 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_4153319_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.cover_4153401
#print axioms cover_4153319

def root_4153313 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4153313_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4153313_left_fuel : Nat := 1
def small_4153313_left_count : Nat := 1
def small_4153313_left_encoded : String := "00000003"
theorem small_4153313_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4153313_left_root small_4153313_left_fuel small_4153313_left_count small_4153313_left_encoded = true := by
  decide +kernel
theorem small_4153313_left_covered : CoveredBy scale carrier boxes small_4153313_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4153313_left_root small_4153313_left_fuel small_4153313_left_count small_4153313_left_encoded small_4153313_left_checked

theorem cover_4153313 : CoveredBy scale carrier boxes root_4153313 := by
  apply coveredBy_split_literal root_4153313 small_4153313_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.root_4153319 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_4153313_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.cover_4153319
#print axioms cover_4153313

def root_4151149 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4151149 : CoveredBy scale carrier boxes root_4151149 := by
  apply coveredBy_split_literal root_4151149 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1557.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.root_4153313 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1557.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.cover_4153313
#print axioms cover_4151149

def root_4151143 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4151143_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4151143_left_fuel : Nat := 1
def small_4151143_left_count : Nat := 1
def small_4151143_left_encoded : String := "00000002"
theorem small_4151143_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4151143_left_root small_4151143_left_fuel small_4151143_left_count small_4151143_left_encoded = true := by
  decide +kernel
theorem small_4151143_left_covered : CoveredBy scale carrier boxes small_4151143_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4151143_left_root small_4151143_left_fuel small_4151143_left_count small_4151143_left_encoded small_4151143_left_checked

theorem cover_4151143 : CoveredBy scale carrier boxes root_4151143 := by
  apply coveredBy_split_literal root_4151143 small_4151143_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.root_4151149 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_4151143_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.cover_4151149
#print axioms cover_4151143

def root_4145753 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4145753 : CoveredBy scale carrier boxes root_4145753 := by
  apply coveredBy_split_literal root_4145753 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0105.root_4145754 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.root_4151143 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0105.cover_4145754
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.cover_4151143
#print axioms cover_4145753

def root_4145747 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4145747_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4145747_left_fuel : Nat := 1
def small_4145747_left_count : Nat := 1
def small_4145747_left_encoded : String := "00000001"
theorem small_4145747_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4145747_left_root small_4145747_left_fuel small_4145747_left_count small_4145747_left_encoded = true := by
  decide +kernel
theorem small_4145747_left_covered : CoveredBy scale carrier boxes small_4145747_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4145747_left_root small_4145747_left_fuel small_4145747_left_count small_4145747_left_encoded small_4145747_left_checked

theorem cover_4145747 : CoveredBy scale carrier boxes root_4145747 := by
  apply coveredBy_split_literal root_4145747 small_4145747_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.root_4145753 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_4145747_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.cover_4145753
#print axioms cover_4145747

def root_4141417 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4141417 : CoveredBy scale carrier boxes root_4141417 := by
  apply coveredBy_split_literal root_4141417 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0105.root_4141418 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.root_4145747 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0105.cover_4141418
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.cover_4145747
#print axioms cover_4141417

def root_4141411 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4141411_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4141411_left_fuel : Nat := 1
def small_4141411_left_count : Nat := 1
def small_4141411_left_encoded : String := "00000000"
theorem small_4141411_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4141411_left_root small_4141411_left_fuel small_4141411_left_count small_4141411_left_encoded = true := by
  decide +kernel
theorem small_4141411_left_covered : CoveredBy scale carrier boxes small_4141411_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4141411_left_root small_4141411_left_fuel small_4141411_left_count small_4141411_left_encoded small_4141411_left_checked

theorem cover_4141411 : CoveredBy scale carrier boxes root_4141411 := by
  apply coveredBy_split_literal root_4141411 small_4141411_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.root_4141417 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_4141411_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.cover_4141417
#print axioms cover_4141411

def root_4117605 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4117605 : CoveredBy scale carrier boxes root_4117605 := by
  apply coveredBy_split_literal root_4117605 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0104.root_4117606 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.root_4141411 coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0104.cover_4117606
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.cover_4141411
#print axioms cover_4117605

def root_4169816 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169816_left_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-9480640)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169816_left_fuel : Nat := 24
def small_4169816_left_count : Nat := 175
def small_4169816_left_encoded : String := "10804D010DE7CA02000000050E6014F9000000010B4D43FA0000000510801105000000020DE7CA06000000050E6014FD000000030115234913F85908000000040DAED8790E9661020DAED87D0E96610600000005000000030E962506000000030BF3E576000000051008ED01000000000AA6A27A0000000510ED710500000002008A922913FDF908000000040E0776B90E41390200000005000000010E40FD02000000010D563A3D0EE78D0600000005000000030EE75106000000030000000900000009000000010E962502000000010DAED87D0E9661060BF3E576000000051008ED01000000000AA6A27A0000000510ED71050000000200000006000000030E962506000000030BF3E576100929010AA6A27A0000000500000006000000001008ED01000000000AA6A27A10EDAD05008A922913FDF908000000040D563A390EE78D0200000005000000010EE75102000000010D563A3D0EE78D0600000005000000030EE75106000000030000000A13FE35080D563A390EE78D0200000005000000010EE75102000000010D563A3D0EE78D06000000050000000300000006000000040000000210ED710500000002008A922913FDF908000000040D563A390EE78D020D563A3D0EE78D0600000006000000030000000600000001000000060000000613F895080DAED8790E9661020DAED87D0E96610600000005000000030E962506000000030BF3E576000000051008ED01000000000AA6A27A0000000500000009000000010E962502000000010DAED87D0E9661060BF3E576000000051008ED01000000000AA6A27A0000000500000006000000030E962506000000030BF3E5761009290100000006000000001008ED01000000000AA6A27A10EDAD05019FB46913EEF908000000040D563A390EE78D0200000005000000010EE7510200000001000000060000000600000002000000060000000400000000"
theorem small_4169816_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4169816_left_root small_4169816_left_fuel small_4169816_left_count small_4169816_left_encoded = true := by
  decide +kernel
theorem small_4169816_left_covered : CoveredBy scale carrier boxes small_4169816_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4169816_left_root small_4169816_left_fuel small_4169816_left_count small_4169816_left_encoded small_4169816_left_checked

theorem cover_4169816 : CoveredBy scale carrier boxes root_4169816 := by
  apply coveredBy_split_literal root_4169816 small_4169816_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1562.root coord0 false (-9480640)
  · decide +kernel
  · decide +kernel
  · exact small_4169816_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1562.covered
#print axioms cover_4169816

def root_4169810 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (1816224)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169810_left_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16678144)⟩, ⟨(0), (1816224)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169810_left_fuel : Nat := 1
def small_4169810_left_count : Nat := 1
def small_4169810_left_encoded : String := "00000004"
theorem small_4169810_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4169810_left_root small_4169810_left_fuel small_4169810_left_count small_4169810_left_encoded = true := by
  decide +kernel
theorem small_4169810_left_covered : CoveredBy scale carrier boxes small_4169810_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4169810_left_root small_4169810_left_fuel small_4169810_left_count small_4169810_left_encoded small_4169810_left_checked

theorem cover_4169810 : CoveredBy scale carrier boxes root_4169810 := by
  apply coveredBy_split_literal root_4169810 small_4169810_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.root_4169816 coord4 false (16678144)
  · decide +kernel
  · decide +kernel
  · exact small_4169810_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.cover_4169816
#print axioms cover_4169810

def root_4169809 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169809_right_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(1816224), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169809_right_fuel : Nat := 20
def small_4169809_right_count : Nat := 177
def small_4169809_right_encoded : String := "13E201080B4D43F610804D010DE7CA020E5FD8F900000005000000010E6014F9000000010B4D43FA10804D050DE7CA06000000050E6014FD00000003033F67C90000000513BC310800000005000000040000000210801105000000020DE7CA060E5FD8FD00000005000000030E6014FD00000003033F67C913BBF508000000040DAED8790E96610200000009000000010E9625020000000100000006000000090000000010801101000000000DE7CA020E5FD8F90B4D43FA10804D05000000050000000210801105000000020DE7CA060E5FD8FD00000005000000030E6014FD00000003033F67C913BBF508000000040DAED87D000000090E962506000000030000000900000009000000010E6014F9000000010B4D43FA10804D050DE7CA06000000070E6014FD00000003033F67C913BBF508000000040DAED8790E9661020DAED87D000000070E9625060000000300000008000000010E962502000000010DAED87D0000000700000007000000070000000210801105000000020DE7CA060E5FD8FD033F67C913BBF508000000040DAED879000000070E962502000000010000000700000007000000030E6014FD00000003033F67C913BBF508000000040DAED8790E9661020DAED87D0E9661060AA6A27610EDAD01000000090000000010ED7101000000000AA6A27A0000000710ED71050000000200000007000000030E962506000000030AA6A27610EDAD01000000090000000000000008000000010E962502000000010DAED87D0E9661060AA6A27610EDAD01000000060000000010ED71010000000000000007000000030E962506000000030AA6A27610EDAD010AA6A27A10EDAD05000000060000000200000006000000000000000813BC31080DAED8790E9661020DAED87D000000090E9625060000000300000008000000010E962502000000010DAED87D0E9661060000000600000003000000060000000400000004"
theorem small_4169809_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4169809_right_root small_4169809_right_fuel small_4169809_right_count small_4169809_right_encoded = true := by
  decide +kernel
theorem small_4169809_right_covered : CoveredBy scale carrier boxes small_4169809_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4169809_right_root small_4169809_right_fuel small_4169809_right_count small_4169809_right_encoded small_4169809_right_checked

theorem cover_4169809 : CoveredBy scale carrier boxes root_4169809 := by
  apply coveredBy_split_literal root_4169809 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.root_4169810 small_4169809_right_root coord4 true (1816224)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.cover_4169810
  · exact small_4169809_right_covered
#print axioms cover_4169809

def root_4169803 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169803_left_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-13027072)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169803_left_fuel : Nat := 1
def small_4169803_left_count : Nat := 1
def small_4169803_left_encoded : String := "00000003"
theorem small_4169803_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4169803_left_root small_4169803_left_fuel small_4169803_left_count small_4169803_left_encoded = true := by
  decide +kernel
theorem small_4169803_left_covered : CoveredBy scale carrier boxes small_4169803_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4169803_left_root small_4169803_left_fuel small_4169803_left_count small_4169803_left_encoded small_4169803_left_checked

theorem cover_4169803 : CoveredBy scale carrier boxes root_4169803 := by
  apply coveredBy_split_literal root_4169803 small_4169803_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.root_4169809 coord3 true (-13027072)
  · decide +kernel
  · decide +kernel
  · exact small_4169803_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.cover_4169809
#print axioms cover_4169803

def root_4169795 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169795_left_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169795_left_fuel : Nat := 2
def small_4169795_left_count : Nat := 3
def small_4169795_left_encoded : String := "0F8750FD0000000500000003"
theorem small_4169795_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4169795_left_root small_4169795_left_fuel small_4169795_left_count small_4169795_left_encoded = true := by
  decide +kernel
theorem small_4169795_left_covered : CoveredBy scale carrier boxes small_4169795_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4169795_left_root small_4169795_left_fuel small_4169795_left_count small_4169795_left_encoded small_4169795_left_checked

theorem cover_4169795 : CoveredBy scale carrier boxes root_4169795 := by
  apply coveredBy_split_literal root_4169795 small_4169795_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.root_4169803 coord3 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_4169795_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.cover_4169803
#print axioms cover_4169795

def root_4169789 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169789_left_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (13026304)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169789_left_fuel : Nat := 1
def small_4169789_left_count : Nat := 1
def small_4169789_left_encoded : String := "00000002"
theorem small_4169789_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4169789_left_root small_4169789_left_fuel small_4169789_left_count small_4169789_left_encoded = true := by
  decide +kernel
theorem small_4169789_left_covered : CoveredBy scale carrier boxes small_4169789_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4169789_left_root small_4169789_left_fuel small_4169789_left_count small_4169789_left_encoded small_4169789_left_checked

theorem cover_4169789 : CoveredBy scale carrier boxes root_4169789 := by
  apply coveredBy_split_literal root_4169789 small_4169789_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.root_4169795 coord2 true (13026304)
  · decide +kernel
  · decide +kernel
  · exact small_4169789_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.cover_4169795
#print axioms cover_4169789

def root_4169755 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169755_left_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-12756736), (-10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169755_left_fuel : Nat := 9
def small_4169755_left_count : Nat := 17
def small_4169755_left_encoded : String := "0F878D050C9A8706000000050F878CFD00000003022A45890000000513E201080B4D43F60000000510801101000000000DE7CA0200000005000000070000000400000002"
theorem small_4169755_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4169755_left_root small_4169755_left_fuel small_4169755_left_count small_4169755_left_encoded = true := by
  decide +kernel
theorem small_4169755_left_covered : CoveredBy scale carrier boxes small_4169755_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4169755_left_root small_4169755_left_fuel small_4169755_left_count small_4169755_left_encoded small_4169755_left_checked

theorem cover_4169755 : CoveredBy scale carrier boxes root_4169755 := by
  apply coveredBy_split_literal root_4169755 small_4169755_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.root_4169789 coord2 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_4169755_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.cover_4169789
#print axioms cover_4169755

def root_4169749 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169749_left_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-13027072)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169749_left_fuel : Nat := 1
def small_4169749_left_count : Nat := 1
def small_4169749_left_encoded : String := "00000001"
theorem small_4169749_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4169749_left_root small_4169749_left_fuel small_4169749_left_count small_4169749_left_encoded = true := by
  decide +kernel
theorem small_4169749_left_covered : CoveredBy scale carrier boxes small_4169749_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4169749_left_root small_4169749_left_fuel small_4169749_left_count small_4169749_left_encoded small_4169749_left_checked

theorem cover_4169749 : CoveredBy scale carrier boxes root_4169749 := by
  apply coveredBy_split_literal root_4169749 small_4169749_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.root_4169755 coord1 true (-13027072)
  · decide +kernel
  · decide +kernel
  · exact small_4169749_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.cover_4169755
#print axioms cover_4169749

def root_4169741 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169741_left_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169741_left_fuel : Nat := 2
def small_4169741_left_count : Nat := 3
def small_4169741_left_encoded : String := "0F8750F90000000500000001"
theorem small_4169741_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4169741_left_root small_4169741_left_fuel small_4169741_left_count small_4169741_left_encoded = true := by
  decide +kernel
theorem small_4169741_left_covered : CoveredBy scale carrier boxes small_4169741_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4169741_left_root small_4169741_left_fuel small_4169741_left_count small_4169741_left_encoded small_4169741_left_checked

theorem cover_4169741 : CoveredBy scale carrier boxes root_4169741 := by
  apply coveredBy_split_literal root_4169741 small_4169741_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.root_4169749 coord1 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_4169741_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.cover_4169749
#print axioms cover_4169741

def root_4169735 : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169735_left_root : ZRayBox := fun j => (#[⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (13026304)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169735_left_fuel : Nat := 1
def small_4169735_left_count : Nat := 1
def small_4169735_left_encoded : String := "00000000"
theorem small_4169735_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4169735_left_root small_4169735_left_fuel small_4169735_left_count small_4169735_left_encoded = true := by
  decide +kernel
theorem small_4169735_left_covered : CoveredBy scale carrier boxes small_4169735_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4169735_left_root small_4169735_left_fuel small_4169735_left_count small_4169735_left_encoded small_4169735_left_checked

theorem cover_4169735 : CoveredBy scale carrier boxes root_4169735 := by
  apply coveredBy_split_literal root_4169735 small_4169735_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.root_4169741 coord0 true (13026304)
  · decide +kernel
  · decide +kernel
  · exact small_4169735_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.cover_4169741
#print axioms cover_4169735

def root_4169669 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169669_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169669_left_fuel : Nat := 17
def small_4169669_left_count : Nat := 33
def small_4169669_left_encoded : String := "0F878D010C9A8702000000050F878CF9000000010C9A86FA000000050F875105000000020C9A8706000000050F878CFD00000003022A45890000000513E201080DE7C9F6000000050E5FD901000000000DE7CA02000000050E6014F9000000010B4D43FA0000000510801105000000020DE7CA0600000005000000090000000400000000"
theorem small_4169669_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4169669_left_root small_4169669_left_fuel small_4169669_left_count small_4169669_left_encoded = true := by
  decide +kernel
theorem small_4169669_left_covered : CoveredBy scale carrier boxes small_4169669_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4169669_left_root small_4169669_left_fuel small_4169669_left_count small_4169669_left_encoded small_4169669_left_checked

theorem cover_4169669 : CoveredBy scale carrier boxes root_4169669 := by
  apply coveredBy_split_literal root_4169669 small_4169669_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.root_4169735 coord0 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_4169669_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.cover_4169735
#print axioms cover_4169669

def root_4169663 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169663_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169663_left_fuel : Nat := 1
def small_4169663_left_count : Nat := 1
def small_4169663_left_encoded : String := "00000004"
theorem small_4169663_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4169663_left_root small_4169663_left_fuel small_4169663_left_count small_4169663_left_encoded = true := by
  decide +kernel
theorem small_4169663_left_covered : CoveredBy scale carrier boxes small_4169663_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4169663_left_root small_4169663_left_fuel small_4169663_left_count small_4169663_left_encoded small_4169663_left_checked

theorem cover_4169663 : CoveredBy scale carrier boxes root_4169663 := by
  apply coveredBy_split_literal root_4169663 small_4169663_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.root_4169669 coord4 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_4169663_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.cover_4169669
#print axioms cover_4169663

def root_4169662 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169662_right_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169662_right_fuel : Nat := 23
def small_4169662_right_count : Nat := 131
def small_4169662_right_encoded : String := "1386AD080C9A86F60F878D010C9A8702000000050F878CF9000000010C9A86FA000000050F875105000000020C9A8706000000050F878CFD00000003067ECE8912EA5908000000040DE7C9F6000000050E5FD901000000000DE7CA02000000050E6014F9000000010000000900000009000000000F875101000000000C9A87020F8750F90C9A86FA000000050F875105000000020C9A8706000000050F878CFD00000003067ECE890000000500000009000000010F878CF9000000010C9A86FA0F878D050C9A8706000000050F878CFD00000003067ECE8912EA5908000000040B4D43F6000000050000000700000007000000020F875105000000020C9A87060F8750FD067ECE890000000500000007000000030F878CFD00000003067ECE8912EA5908000000040B4D43F610804D010DE7CA020E5FD8F900000009000000010E6014F9000000010B4D43FA10804D050DE7CA060000000500000009000000021080110500000002000000090000000010801101000000000DE7CA020E5FD8F90B4D43FA10804D050000000700000002108011050000000200000009000000010E6014F9000000010B4D43FA0000000710801105000000020DE7CA06000000060E6014FD000000030569AC491340D508000000040DAED87900000007000000060000000612EA95080B4D43F610804D0100000009000000001080110100000000000000070000000400000004"
theorem small_4169662_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4169662_right_root small_4169662_right_fuel small_4169662_right_count small_4169662_right_encoded = true := by
  decide +kernel
theorem small_4169662_right_covered : CoveredBy scale carrier boxes small_4169662_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4169662_right_root small_4169662_right_fuel small_4169662_right_count small_4169662_right_encoded small_4169662_right_checked

theorem cover_4169662 : CoveredBy scale carrier boxes root_4169662 := by
  apply coveredBy_split_literal root_4169662 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.root_4169663 small_4169662_right_root coord4 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.cover_4169663
  · exact small_4169662_right_covered
#print axioms cover_4169662

def root_4169657 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169657_right_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169657_right_fuel : Nat := 1
def small_4169657_right_count : Nat := 1
def small_4169657_right_encoded : String := "00000003"
theorem small_4169657_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4169657_right_root small_4169657_right_fuel small_4169657_right_count small_4169657_right_encoded = true := by
  decide +kernel
theorem small_4169657_right_covered : CoveredBy scale carrier boxes small_4169657_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4169657_right_root small_4169657_right_fuel small_4169657_right_count small_4169657_right_encoded small_4169657_right_checked

theorem cover_4169657 : CoveredBy scale carrier boxes root_4169657 := by
  apply coveredBy_split_literal root_4169657 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.root_4169662 small_4169657_right_root coord3 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.cover_4169662
  · exact small_4169657_right_covered
#print axioms cover_4169657

def root_4169656 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4169656 : CoveredBy scale carrier boxes root_4169656 := by
  apply coveredBy_split_literal root_4169656 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.root_4169657 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1563.root coord3 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.cover_4169657
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1563.covered
#print axioms cover_4169656

def root_4169650 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169650_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169650_left_fuel : Nat := 1
def small_4169650_left_count : Nat := 1
def small_4169650_left_encoded : String := "00000002"
theorem small_4169650_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4169650_left_root small_4169650_left_fuel small_4169650_left_count small_4169650_left_encoded = true := by
  decide +kernel
theorem small_4169650_left_covered : CoveredBy scale carrier boxes small_4169650_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4169650_left_root small_4169650_left_fuel small_4169650_left_count small_4169650_left_encoded small_4169650_left_checked

theorem cover_4169650 : CoveredBy scale carrier boxes root_4169650 := by
  apply coveredBy_split_literal root_4169650 small_4169650_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.root_4169656 coord2 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_4169650_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.cover_4169656
#print axioms cover_4169650

def root_4169590 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169590_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169590_left_fuel : Nat := 10
def small_4169590_left_count : Nat := 27
def small_4169590_left_encoded : String := "0F34D0FA0CFD9BFD0F350D0600000005000000030F34D1060000000304548A0913867108000000040C9A86F6000000050F875101000000000C9A8702000000050F878CF900000001000000081386AD080C9A86F6000000050F87510100000000000000080000000400000002"
theorem small_4169590_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4169590_left_root small_4169590_left_fuel small_4169590_left_count small_4169590_left_encoded = true := by
  decide +kernel
theorem small_4169590_left_covered : CoveredBy scale carrier boxes small_4169590_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4169590_left_root small_4169590_left_fuel small_4169590_left_count small_4169590_left_encoded small_4169590_left_checked

theorem cover_4169590 : CoveredBy scale carrier boxes root_4169590 := by
  apply coveredBy_split_literal root_4169590 small_4169590_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.root_4169650 coord2 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_4169590_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.cover_4169650
#print axioms cover_4169590

def root_4169585 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169585_right_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169585_right_fuel : Nat := 1
def small_4169585_right_count : Nat := 1
def small_4169585_right_encoded : String := "00000001"
theorem small_4169585_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4169585_right_root small_4169585_right_fuel small_4169585_right_count small_4169585_right_encoded = true := by
  decide +kernel
theorem small_4169585_right_covered : CoveredBy scale carrier boxes small_4169585_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4169585_right_root small_4169585_right_fuel small_4169585_right_count small_4169585_right_encoded small_4169585_right_checked

theorem cover_4169585 : CoveredBy scale carrier boxes root_4169585 := by
  apply coveredBy_split_literal root_4169585 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.root_4169590 small_4169585_right_root coord1 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.cover_4169590
  · exact small_4169585_right_covered
#print axioms cover_4169585

def root_4177020 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4177020 : CoveredBy scale carrier boxes root_4177020 := by
  apply coveredBy_split_literal root_4177020 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1564.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1565.root coord3 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1564.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1565.covered
#print axioms cover_4177020

def root_4177014 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4177014_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4177014_left_fuel : Nat := 1
def small_4177014_left_count : Nat := 1
def small_4177014_left_encoded : String := "00000002"
theorem small_4177014_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4177014_left_root small_4177014_left_fuel small_4177014_left_count small_4177014_left_encoded = true := by
  decide +kernel
theorem small_4177014_left_covered : CoveredBy scale carrier boxes small_4177014_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4177014_left_root small_4177014_left_fuel small_4177014_left_count small_4177014_left_encoded small_4177014_left_checked

theorem cover_4177014 : CoveredBy scale carrier boxes root_4177014 := by
  apply coveredBy_split_literal root_4177014 small_4177014_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.root_4177020 coord2 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_4177014_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.cover_4177020
#print axioms cover_4177014

def root_4176708 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4176708_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(12755968), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4176708_left_fuel : Nat := 17
def small_4176708_left_count : Nat := 141
def small_4176708_left_encoded : String := "0F34D0FA0CFD9BFD0F350D0604548A0913867108000000040C9A86F6000000050F875101000000000C9A8706000000050F878CFD000000030AD3577910D13D02000000050000000110D1010200000001000000071386AD080C9A86F6000000050F875101000000000000000700000004000000030F34D1060000000304548A0913867108000000040C9A86F60F878D010AD3577910D13D02000000050000000110D10102000000010AD3578510D100FA000000050000000210D13CFA000000020AD3577D10D13D06000000050000000310D10106000000030000000A000000000F875101000000000AD3577910D13D020AD357850000000810D13CFA000000020AD3577D10D13D06022A4589000000080000000800000003000000080000000110D10102000000010AD357850000000810D13CFA000000020AD3577D10D13D06022A458913E1C508000000040B4D43F60000000A000000080000000700000003000000081386AD080C9A86F60F878D010AD3577910D13D020AD3578510D100FA000000050000000210D13CFA000000020AD3577D10D13D06000000050000000310D1010600000003000000080000000110D10102000000010AD3578510D100FA0AD3577D00000005000000070000000210D13CFA000000020AD3577D10D13D06067ECE8912EA59080000000400000007000000070000000310D1010600000003067ECE890000000800000008000000000F875101000000000AD3577910D13D020000000800000001000000080000000400000002"
theorem small_4176708_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4176708_left_root small_4176708_left_fuel small_4176708_left_count small_4176708_left_encoded = true := by
  decide +kernel
theorem small_4176708_left_covered : CoveredBy scale carrier boxes small_4176708_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4176708_left_root small_4176708_left_fuel small_4176708_left_count small_4176708_left_encoded small_4176708_left_checked

theorem cover_4176708 : CoveredBy scale carrier boxes root_4176708 := by
  apply coveredBy_split_literal root_4176708 small_4176708_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.root_4177014 coord2 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_4176708_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.cover_4177014
#print axioms cover_4176708

def root_4176702 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4176702_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12755968)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4176702_left_fuel : Nat := 1
def small_4176702_left_count : Nat := 1
def small_4176702_left_encoded : String := "00000001"
theorem small_4176702_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4176702_left_root small_4176702_left_fuel small_4176702_left_count small_4176702_left_encoded = true := by
  decide +kernel
theorem small_4176702_left_covered : CoveredBy scale carrier boxes small_4176702_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4176702_left_root small_4176702_left_fuel small_4176702_left_count small_4176702_left_encoded small_4176702_left_checked

theorem cover_4176702 : CoveredBy scale carrier boxes root_4176702 := by
  apply coveredBy_split_literal root_4176702 small_4176702_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.root_4176708 coord1 false (12755968)
  · decide +kernel
  · decide +kernel
  · exact small_4176702_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.cover_4176708
#print axioms cover_4176702

def root_4169584 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4169584 : CoveredBy scale carrier boxes root_4169584 := by
  apply coveredBy_split_literal root_4169584 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.root_4169585 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.root_4176702 coord1 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.cover_4169585
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.cover_4176702
#print axioms cover_4169584

def root_4169578 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169578_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169578_left_fuel : Nat := 1
def small_4169578_left_count : Nat := 1
def small_4169578_left_encoded : String := "00000000"
theorem small_4169578_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4169578_left_root small_4169578_left_fuel small_4169578_left_count small_4169578_left_encoded = true := by
  decide +kernel
theorem small_4169578_left_covered : CoveredBy scale carrier boxes small_4169578_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4169578_left_root small_4169578_left_fuel small_4169578_left_count small_4169578_left_encoded small_4169578_left_checked

theorem cover_4169578 : CoveredBy scale carrier boxes root_4169578 := by
  apply coveredBy_split_literal root_4169578 small_4169578_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.root_4169584 coord0 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_4169578_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.cover_4169584
#print axioms cover_4169578

def root_4169164 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169164_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169164_left_fuel : Nat := 21
def small_4169164_left_count : Nat := 189
def small_4169164_left_encoded : String := "0F34D0F60CFD9BF90F350D020CFD9C050F34D0FA00000005000000020F350CFA000000020CFD9BFD0F350D0600000005000000030F34D1060000000304548A0913867108000000040C9A8702000000050F878CF9000000010C9A86FA000000050F875105000000020AD357810000000910D13CF6000000000AD3577D10D13D06000000050000000310D1010600000003000000091386AD080C9A8702000000050F878CF9000000010C9A86FA000000050000000900000004000000010F34D102000000010CFD9C050F34D0FA00000005000000020F350CFA000000020CFD9BFD0F350D0604548A0913867108000000040C9A86FA000000050F875105000000020C9A8706000000050F878CFD00000003000000061386AD080C9A86FA000000050F875105000000020000000600000004000000030F34D1060000000304548A0913867108000000040C9A86FA0F878D050AD3578110D100F6000000050000000010D13CF6000000000AD3577910D13D02000000050000000110D10102000000010AD3577D10D13D06000000050000000310D10106000000030000000A000000020F875105000000020AD3578110D100F60AD3577910D13D020000000600000001000000060000000010D13CF6000000000AD3577910D13D020AD3577D10D13D06022A458900000006000000060000000310D1010600000003022A458913E1C508000000040B4D43FA0000000A00000006000000060000000110D1010200000001000000061386AD080C9A86FA0F878D050AD3578110D100F60AD357790000000510D1010200000001000000060000000010D13CF6000000000AD3577910D13D020AD3577D10D13D06000000050000000310D1010600000003067ECE8912EA59080000000400000009000000090000000110D10102000000010AD3577D10D13D06000000060000000310D1010600000003067ECE890000000600000006000000020F875105000000020AD357810000000610D13CF6000000000AD3577910D13D020000000900000001000000060000000400000000"
theorem small_4169164_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4169164_left_root small_4169164_left_fuel small_4169164_left_count small_4169164_left_encoded = true := by
  decide +kernel
theorem small_4169164_left_covered : CoveredBy scale carrier boxes small_4169164_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4169164_left_root small_4169164_left_fuel small_4169164_left_count small_4169164_left_encoded small_4169164_left_checked

theorem cover_4169164 : CoveredBy scale carrier boxes root_4169164 := by
  apply coveredBy_split_literal root_4169164 small_4169164_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.root_4169578 coord0 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_4169164_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.cover_4169578
#print axioms cover_4169164

def root_4169158 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169158_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169158_left_fuel : Nat := 1
def small_4169158_left_count : Nat := 1
def small_4169158_left_encoded : String := "00000004"
theorem small_4169158_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4169158_left_root small_4169158_left_fuel small_4169158_left_count small_4169158_left_encoded = true := by
  decide +kernel
theorem small_4169158_left_covered : CoveredBy scale carrier boxes small_4169158_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4169158_left_root small_4169158_left_fuel small_4169158_left_count small_4169158_left_encoded small_4169158_left_checked

theorem cover_4169158 : CoveredBy scale carrier boxes root_4169158 := by
  apply coveredBy_split_literal root_4169158 small_4169158_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.root_4169164 coord4 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_4169158_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.cover_4169164
#print axioms cover_4169158

def root_4169157 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169157_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169157_right_fuel : Nat := 22
def small_4169157_right_count : Nat := 281
def small_4169157_right_encoded : String := "12073D080CFD9C010F34D0F60CFD9BF90F350D020CFD9C050F34D0FA00000005000000020F350CFA000000020CFD9BFD0F350D0600000005000000030F34D1060000000300000009000000010F34D102000000010CFD9C050F34D0FA0CFD9BFD000000050F34D106000000030CFD9C09000000050F350D080000000500000004000000020F350CFA000000020CFD9BFD0F350D060CFD9C090F34D108000000040C9A86FA00000005000000060F350D080000000600000004000000030F34D106000000030CFD9C090F34D108000000040C9A86FA0F878D050AD357810000000910D13CF6000000000AD357790000000900000009000000020F875105000000020000000600000009000000000F350CF6000000000CFD9BF90F350D020CFD9C050F34D0FA0CFD9BFD0F350D0600000005000000030F34D106000000030CFD9C090F34D108000000040C9A86F600000005000000080F350D080000000800000004000000020F350CFA000000020CFD9BFD0F350D060CFD9C090F34D108000000040C9A86F60F878D010C9A8702000000050F878CF9000000010C9A86FA000000050F8751050000000200000009000000000F875101000000000C9A87020F8750F90C9A86FA000000050F8751050000000200000009000000010F878CF9000000010C9A86FA000000070F875105000000020C9A8706000000070F878CFD000000030AD3578910D101080000000400000007000000070F350D080C9A86F60F878D0100000009000000000F875101000000000000000700000004000000030F34D106000000030CFD9C090F34D108000000040C9A86F60F878D010C9A8702000000090F878CF90000000100000009000000000F87510100000000000000080F350D080000000900000004000000010F34D102000000010CFD9C050F34D0FA0CFD9BFD000000070F34D106000000030CFD9C090F34D108000000040C9A86F60F878D010AD357790000000710D101020000000100000007000000000F875101000000000000000700000007000000020F350CFA000000020CFD9BFD0F350D060CFD9C090F34D108000000040C9A86F60F878D010C9A86FA0F878D0500000007000000020F8751050000000200000006000000000F875101000000000C9A86FA000000070F87510500000002000000060F350D080000000700000004000000030F34D106000000030CFD9C090F34D108000000040C9A86F60F878D010C9A86FA0F878D050AD3577910D13D020AD3577D10D13D060AD3578910D101080000000400000007000000070000000310D1010600000003000000080000000110D10102000000010AD3577D10D13D06000000060000000300000006000000020F875105000000020AD3577910D13D02000000060000000100000006000000000F875101000000000C9A86FA0F878D050AD357790000000800000008000000020F875105000000020AD3577910D13D020000000800000001000000060F350D080C9A86F60F878D010C9A86FA0000000900000006000000000F87510100000000000000080000000400000004"
theorem small_4169157_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4169157_right_root small_4169157_right_fuel small_4169157_right_count small_4169157_right_encoded = true := by
  decide +kernel
theorem small_4169157_right_covered : CoveredBy scale carrier boxes small_4169157_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4169157_right_root small_4169157_right_fuel small_4169157_right_count small_4169157_right_encoded small_4169157_right_checked

theorem cover_4169157 : CoveredBy scale carrier boxes root_4169157 := by
  apply coveredBy_split_literal root_4169157 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.root_4169158 small_4169157_right_root coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.cover_4169158
  · exact small_4169157_right_covered
#print axioms cover_4169157

def root_4169152 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169152_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169152_right_fuel : Nat := 1
def small_4169152_right_count : Nat := 1
def small_4169152_right_encoded : String := "00000003"
theorem small_4169152_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4169152_right_root small_4169152_right_fuel small_4169152_right_count small_4169152_right_encoded = true := by
  decide +kernel
theorem small_4169152_right_covered : CoveredBy scale carrier boxes small_4169152_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4169152_right_root small_4169152_right_fuel small_4169152_right_count small_4169152_right_encoded small_4169152_right_checked

theorem cover_4169152 : CoveredBy scale carrier boxes root_4169152 := by
  apply coveredBy_split_literal root_4169152 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.root_4169157 small_4169152_right_root coord3 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.cover_4169157
  · exact small_4169152_right_covered
#print axioms cover_4169152

def root_4169151 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4169151 : CoveredBy scale carrier boxes root_4169151 := by
  apply coveredBy_split_literal root_4169151 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.root_4169152 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1566.root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.cover_4169152
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1566.covered
#print axioms cover_4169151

def root_4169145 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169145_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4169145_left_fuel : Nat := 1
def small_4169145_left_count : Nat := 1
def small_4169145_left_encoded : String := "00000002"
theorem small_4169145_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4169145_left_root small_4169145_left_fuel small_4169145_left_count small_4169145_left_encoded = true := by
  decide +kernel
theorem small_4169145_left_covered : CoveredBy scale carrier boxes small_4169145_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4169145_left_root small_4169145_left_fuel small_4169145_left_count small_4169145_left_encoded small_4169145_left_checked

theorem cover_4169145 : CoveredBy scale carrier boxes root_4169145 := by
  apply coveredBy_split_literal root_4169145 small_4169145_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.root_4169151 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_4169145_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.cover_4169151
#print axioms cover_4169145

def root_4168883 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4168883_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4168883_left_fuel : Nat := 18
def small_4168883_left_count : Nat := 121
def small_4168883_left_encoded : String := "120700FA08A912FD12073D0608A9130912070108000000040CFD9C010F34D0F60CFD9BF90F350D02000000050000000100000005000000000F350CF6000000000CFD9BF90F350D0204548A05138670FA000000050000000200000005000000010F34D1020000000104548A05138670FA0CFD9BFD0000000700000005000000021386ACFA000000020CFD9BFD0F350D0600000005000000030F34D1060000000304548A0913867108000000040C9A86F6000000050F87510100000000000000081386AD080C9A86F600000005000000080000000412073D080CFD9C010F34D0F600000005000000000F350CF6000000000CFD9BF90F350D0200000005000000010F34D10200000001000000070000000400000003120701060000000308A9130912070108000000040CFD9C010F34D0F60CFD9BF9000000050F34D1020000000104548A05000000051386ACFA00000002045489FD00000005138671060000000300000008000000000F350CF6000000000CFD9BF9000000080000000812073D080CFD9C010F34D0F60CFD9BF90F350D0200000005000000010F34D1020000000104548A05000000081386ACFA00000002045489FD1386AD060CFD9C0900000005000000080000000300000008000000000F350CF600000000000000080000000400000002"
theorem small_4168883_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4168883_left_root small_4168883_left_fuel small_4168883_left_count small_4168883_left_encoded = true := by
  decide +kernel
theorem small_4168883_left_covered : CoveredBy scale carrier boxes small_4168883_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4168883_left_root small_4168883_left_fuel small_4168883_left_count small_4168883_left_encoded small_4168883_left_checked

theorem cover_4168883 : CoveredBy scale carrier boxes root_4168883 := by
  apply coveredBy_split_literal root_4168883 small_4168883_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.root_4169145 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4168883_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.cover_4169145
#print axioms cover_4168883

def root_4168878 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4168878_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4168878_right_fuel : Nat := 1
def small_4168878_right_count : Nat := 1
def small_4168878_right_encoded : String := "00000001"
theorem small_4168878_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4168878_right_root small_4168878_right_fuel small_4168878_right_count small_4168878_right_encoded = true := by
  decide +kernel
theorem small_4168878_right_covered : CoveredBy scale carrier boxes small_4168878_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4168878_right_root small_4168878_right_fuel small_4168878_right_count small_4168878_right_encoded small_4168878_right_checked

theorem cover_4168878 : CoveredBy scale carrier boxes root_4168878 := by
  apply coveredBy_split_literal root_4168878 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.root_4168883 small_4168878_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.cover_4168883
  · exact small_4168878_right_covered
#print axioms cover_4168878

def root_4168877 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4168877 : CoveredBy scale carrier boxes root_4168877 := by
  apply coveredBy_split_literal root_4168877 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.root_4168878 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1567.root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.cover_4168878
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1567.covered
#print axioms cover_4168877

def root_4168871 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4168871_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4168871_left_fuel : Nat := 1
def small_4168871_left_count : Nat := 1
def small_4168871_left_encoded : String := "00000000"
theorem small_4168871_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4168871_left_root small_4168871_left_fuel small_4168871_left_count small_4168871_left_encoded = true := by
  decide +kernel
theorem small_4168871_left_covered : CoveredBy scale carrier boxes small_4168871_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4168871_left_root small_4168871_left_fuel small_4168871_left_count small_4168871_left_encoded small_4168871_left_checked

theorem cover_4168871 : CoveredBy scale carrier boxes root_4168871 := by
  apply coveredBy_split_literal root_4168871 small_4168871_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.root_4168877 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_4168871_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.cover_4168877
#print axioms cover_4168871

def root_4167781 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4167781 : CoveredBy scale carrier boxes root_4167781 := by
  apply coveredBy_split_literal root_4167781 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1561.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.root_4168871 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1561.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.cover_4168871
#print axioms cover_4167781

def root_4167776 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4167776_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4167776_right_fuel : Nat := 1
def small_4167776_right_count : Nat := 1
def small_4167776_right_encoded : String := "00000004"
theorem small_4167776_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4167776_right_root small_4167776_right_fuel small_4167776_right_count small_4167776_right_encoded = true := by
  decide +kernel
theorem small_4167776_right_covered : CoveredBy scale carrier boxes small_4167776_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4167776_right_root small_4167776_right_fuel small_4167776_right_count small_4167776_right_encoded small_4167776_right_checked

theorem cover_4167776 : CoveredBy scale carrier boxes root_4167776 := by
  apply coveredBy_split_literal root_4167776 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.root_4167781 small_4167776_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.cover_4167781
  · exact small_4167776_right_covered
#print axioms cover_4167776

def root_4167546 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4167546_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4167546_left_fuel : Nat := 17
def small_4167546_left_count : Nat := 109
def small_4167546_left_encoded : String := "1151E9090000000408A91301120700F608A912F912073D0208A91305120700FA00000005000000020000000900000001120701020000000108A91305120700FA08A912FD0000000512070106000000030500010800000005135D810904548A010000000500000007000000040000000212073CFA0000000208A912FD00000006000000060000000012073CF60000000008A912F912073D0208A91305120700FA08A912FD000000071207010600000003000000080000000212073CFA0000000208A912FD12073D0605000108135D4509000000040CFD9C010000000900000007135D81090CFD9C010F34D0F60CFD9BF9000000090F34D102000000010CFD9C050000000700000006000000000F350CF6000000000CFD9BF90F350D020CFD9C050000000700000009000000010F34D1020000000100000007000000040000000312070106000000030000000900000001120701020000000108A91305120700FA000000070000000212073CFA0000000208A912FD12073D06000000070000000312070106000000030500010800000006135D81090CFD9C010F34D0F6045489F90000000800000006000000000000000800000004"
theorem small_4167546_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4167546_left_root small_4167546_left_fuel small_4167546_left_count small_4167546_left_encoded = true := by
  decide +kernel
theorem small_4167546_left_covered : CoveredBy scale carrier boxes small_4167546_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4167546_left_root small_4167546_left_fuel small_4167546_left_count small_4167546_left_encoded small_4167546_left_checked

theorem cover_4167546 : CoveredBy scale carrier boxes root_4167546 := by
  apply coveredBy_split_literal root_4167546 small_4167546_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.root_4167776 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_4167546_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.cover_4167776
#print axioms cover_4167546

def root_4167540 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4167540_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4167540_left_fuel : Nat := 1
def small_4167540_left_count : Nat := 1
def small_4167540_left_encoded : String := "00000003"
theorem small_4167540_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4167540_left_root small_4167540_left_fuel small_4167540_left_count small_4167540_left_encoded = true := by
  decide +kernel
theorem small_4167540_left_covered : CoveredBy scale carrier boxes small_4167540_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4167540_left_root small_4167540_left_fuel small_4167540_left_count small_4167540_left_encoded small_4167540_left_checked

theorem cover_4167540 : CoveredBy scale carrier boxes root_4167540 := by
  apply coveredBy_split_literal root_4167540 small_4167540_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.root_4167546 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_4167540_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.cover_4167546
#print axioms cover_4167540

def root_4167050 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4167050_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4167050_left_fuel : Nat := 30
def small_4167050_left_count : Nat := 225
def small_4167050_left_encoded : String := "1151E8FD0A0001081151E9090000000408A91301120700F60000000500000000000000071152250908A91301120700F608A912F912073D0208A91305120700FA08A9130912070108000000040500010600000005135D80FD0000000300000005000000050000000212073CFA0000000208A9130912070108000000040500010600000005135D80FD00000003000000050000000500000001120701020000000108A91305120700FA000000050000000212073CFA0000000208A9130900000005000000060000000012073CF60000000008A912F912073D0208A91305120700FA08A9130912070108000000040500010600000005135D80FD0000000300000005000000050000000212073CFA0000000208A9130912070108000000040500010600000005135D80FD000000030CFD9C010F34D0F600000005000000000F350CF6000000000CFD9BF90F350D0200000005000000010F34D102000000010CFD9C050F34D0FA00000005000000020F350CFA0000000204548A0913867108000000040C9A86F6000000050F875101000000000C9A86FA000000050F875105000000020780010600000005128A7CFD000000030AD357790000000710D1010200000001000000071386AD080C9A86F600000005000000070000000412073D080500010600000005135D80FD000000030CFD9C010F34D0F600000005000000000F350CF6000000000CFD9BF90F350D0200000005000000010F34D10200000001000000070000000400000001120701020000000108A91305120700FA000000070000000212073CFA0000000208A91309120701080000000405000106135D44FD0CFD9C010F34D0F600000005000000000F350CF6000000000000000700000003135D80FD000000030CFD9C010F34D0F6045489F90000000513867102000000010CFD9C05000000050F350CFA0000000200000006000000000F350CF600000000045489F91386AD020CFD9C050F34D0FA00000005000000020F350CFA0000000204548A0913867108000000040C9A86F60F878D010C9A86FA0000000500000006000000000F875101000000000C9A86FA000000070F8751050000000200000007000000070000000113867102000000010CFD9C05000000070F350CFA0000000204548A0913867108000000040C9A86F60F878D010C9A86FA0000000700000006000000000F87510100000000000000070000000712073D0800000007000000040000000400000003"
theorem small_4167050_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4167050_left_root small_4167050_left_fuel small_4167050_left_count small_4167050_left_encoded = true := by
  decide +kernel
theorem small_4167050_left_covered : CoveredBy scale carrier boxes small_4167050_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4167050_left_root small_4167050_left_fuel small_4167050_left_count small_4167050_left_encoded small_4167050_left_checked

theorem cover_4167050 : CoveredBy scale carrier boxes root_4167050 := by
  apply coveredBy_split_literal root_4167050 small_4167050_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.root_4167540 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_4167050_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.cover_4167540
#print axioms cover_4167050

def root_4167045 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4167045_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4167045_right_fuel : Nat := 1
def small_4167045_right_count : Nat := 1
def small_4167045_right_encoded : String := "00000002"
theorem small_4167045_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4167045_right_root small_4167045_right_fuel small_4167045_right_count small_4167045_right_encoded = true := by
  decide +kernel
theorem small_4167045_right_covered : CoveredBy scale carrier boxes small_4167045_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4167045_right_root small_4167045_right_fuel small_4167045_right_count small_4167045_right_encoded small_4167045_right_checked

theorem cover_4167045 : CoveredBy scale carrier boxes root_4167045 := by
  apply coveredBy_split_literal root_4167045 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.root_4167050 small_4167045_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.cover_4167050
  · exact small_4167045_right_covered
#print axioms cover_4167045

def root_4188040 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4188040_right_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4188040_right_fuel : Nat := 28
def small_4188040_right_count : Nat := 171
def small_4188040_right_encoded : String := "0F34D102000000010CFD9BFD0F350D0604548A0913867108000000040C9A86F60F878D010C9A8706000000060F878CFD0000000300000006000000000F875101000000000C9A87060F8750FD078000FA128A7D050AD3577910D13D02022A458913E1C508000000040B4D43F60000000810801101000000000B4D44060000000610804CFD0000000300000006000000060000000110D1010200000001000000060000000200000006000000030F878CFD00000003078000FA128A7D050AD3577910D13D02022A458913E1C508000000040B4D43F610804D010DE7CA0600000006000000060000000010801101000000000DE7CA060E5FD8FD08C000FA11FC2505000000060000000200000006000000030E6014FD0000000308C000FA11FC25050BE879B91011AD020115234913F85908000000040DAED87D0E9661060000000600000003000000060000000600000001000000060000000200000005000000060000000110D10102000000010000000600000002000000061386AD080C9A86F6000000060F875101000000000C9A8706000000060000000600000004000000030F34D1060000000304548A0913867108000000040C9A86F60F878D01078000FA128A7D050AD3577910D13D020AD3577D10D13D0600000006000000030000000600000001000000060000000200000006000000000F87510100000000078000FA128A7D050AD3577910D13D020AD3577D10D13D06022A458913E1C508000000040B4D43F610804D01000000060000000000000005000000060000000310D1010600000003000000050000000110D10102000000010000000500000002000000051386AD080C9A86F60F878D0100000006000000000F87510100000000078000FA128A7D050AD3577910D13D020AD3577D00000006000000060000000100000006000000020000000500000004"
theorem small_4188040_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4188040_right_root small_4188040_right_fuel small_4188040_right_count small_4188040_right_encoded = true := by
  decide +kernel
theorem small_4188040_right_covered : CoveredBy scale carrier boxes small_4188040_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4188040_right_root small_4188040_right_fuel small_4188040_right_count small_4188040_right_encoded small_4188040_right_checked

theorem cover_4188040 : CoveredBy scale carrier boxes root_4188040 := by
  apply coveredBy_split_literal root_4188040 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1568.root small_4188040_right_root coord1 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1568.covered
  · exact small_4188040_right_covered
#print axioms cover_4188040

def root_4188034 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4188034_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4188034_left_fuel : Nat := 1
def small_4188034_left_count : Nat := 1
def small_4188034_left_encoded : String := "00000000"
theorem small_4188034_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4188034_left_root small_4188034_left_fuel small_4188034_left_count small_4188034_left_encoded = true := by
  decide +kernel
theorem small_4188034_left_covered : CoveredBy scale carrier boxes small_4188034_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4188034_left_root small_4188034_left_fuel small_4188034_left_count small_4188034_left_encoded small_4188034_left_checked

theorem cover_4188034 : CoveredBy scale carrier boxes root_4188034 := by
  apply coveredBy_split_literal root_4188034 small_4188034_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.root_4188040 coord0 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_4188034_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.cover_4188040
#print axioms cover_4188034

def root_4187954 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4187954_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4187954_left_fuel : Nat := 11
def small_4187954_left_count : Nat := 39
def small_4187954_left_encoded : String := "0F34D0F60CFD9BF90F350D020CFD9BFD0F350D0604548A0913867108000000040C9A8702000000050000000800000009000000030F34D1060000000304548A0913867108000000040C9A8702000000090F878CF900000001078000FA000000090000000900000009000000010F34D102000000010CFD9BFD0F350D0600000006000000030F34D1060000000304548A09000000060000000600000000"
theorem small_4187954_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4187954_left_root small_4187954_left_fuel small_4187954_left_count small_4187954_left_encoded = true := by
  decide +kernel
theorem small_4187954_left_covered : CoveredBy scale carrier boxes small_4187954_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4187954_left_root small_4187954_left_fuel small_4187954_left_count small_4187954_left_encoded small_4187954_left_checked

theorem cover_4187954 : CoveredBy scale carrier boxes root_4187954 := by
  apply coveredBy_split_literal root_4187954 small_4187954_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.root_4188034 coord0 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_4187954_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.cover_4188034
#print axioms cover_4187954

def root_4187949 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4187949_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4187949_right_fuel : Nat := 1
def small_4187949_right_count : Nat := 1
def small_4187949_right_encoded : String := "00000002"
theorem small_4187949_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4187949_right_root small_4187949_right_fuel small_4187949_right_count small_4187949_right_encoded = true := by
  decide +kernel
theorem small_4187949_right_covered : CoveredBy scale carrier boxes small_4187949_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4187949_right_root small_4187949_right_fuel small_4187949_right_count small_4187949_right_encoded small_4187949_right_checked

theorem cover_4187949 : CoveredBy scale carrier boxes root_4187949 := by
  apply coveredBy_split_literal root_4187949 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.root_4187954 small_4187949_right_root coord2 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.cover_4187954
  · exact small_4187949_right_covered
#print axioms cover_4187949

def root_4187948 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4187948_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4187948_right_fuel : Nat := 17
def small_4187948_right_count : Nat := 115
def small_4187948_right_encoded : String := "135D4505000000020CFD9C010F34D0F60CFD9BF90F350D020CFD9BFD0F350D0604548A090000000600000006000000030F34D1060000000300000009000000010F34D1020000000100000006000000000F350CF6000000000CFD9BF90F350D020CFD9BFD0F350D0604548A0913867108000000040C9A86F60F878D010C9A87020F8750F9000000090000000100000006000000000F875101000000000C9A87020F8750F90C9A87060F8750FD028000FA0000000900000006000000030F878CFD00000003028000FA0000000900000006000000010F878CF9000000010C9A8706000000060F878CFD00000003000000061386AD080C9A86F60F878D010C9A87020000000600000006000000000F875101000000000C9A87020F8750F900000009000000010000000600000004000000030F34D1060000000304548A0913867108000000040C9A86F60F878D010C9A8702000000070F878CF90000000100000006000000000F875101000000000C9A87020F8750F9028000FA000000090000000500000001000000051386AD080C9A86F6000000090F875101000000000C9A8702000000090000000500000004000000010F34D102000000010CFD9BFD0F350D06000000060000000300000006"
theorem small_4187948_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4187948_right_root small_4187948_right_fuel small_4187948_right_count small_4187948_right_encoded = true := by
  decide +kernel
theorem small_4187948_right_covered : CoveredBy scale carrier boxes small_4187948_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4187948_right_root small_4187948_right_fuel small_4187948_right_count small_4187948_right_encoded small_4187948_right_checked

theorem cover_4187948 : CoveredBy scale carrier boxes root_4187948 := by
  apply coveredBy_split_literal root_4187948 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.root_4187949 small_4187948_right_root coord2 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.cover_4187949
  · exact small_4187948_right_covered
#print axioms cover_4187948

def root_4187942 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4187942_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4187942_left_fuel : Nat := 1
def small_4187942_left_count : Nat := 1
def small_4187942_left_encoded : String := "00000004"
theorem small_4187942_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4187942_left_root small_4187942_left_fuel small_4187942_left_count small_4187942_left_encoded = true := by
  decide +kernel
theorem small_4187942_left_covered : CoveredBy scale carrier boxes small_4187942_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4187942_left_root small_4187942_left_fuel small_4187942_left_count small_4187942_left_encoded small_4187942_left_checked

theorem cover_4187942 : CoveredBy scale carrier boxes root_4187942 := by
  apply coveredBy_split_literal root_4187942 small_4187942_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.root_4187948 coord4 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_4187942_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.cover_4187948
#print axioms cover_4187942

def root_4187941 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4187941_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4187941_right_fuel : Nat := 16
def small_4187941_right_count : Nat := 97
def small_4187941_right_encoded : String := "12073D08050000FA135D81050CFD9C010F34D0F60CFD9BF90F350D0200000009000000010F34D102000000010CFD9BFD0000000600000006000000000F350CF6000000000CFD9BF90F350D020CFD9BFD0F350D060CFD9C090F34D108000000040C9A86F60F878D0100000009000000000F875101000000000C9A8702000000090F878CF900000001000000060F350D080000000900000004000000030F34D106000000030CFD9C090F34D108000000040C9A86F6000000090F875101000000000000000900000009000000010F34D102000000010CFD9BFD0F350D0600000006000000030F34D106000000030CFD9C09000000060000000600000002135D4505000000020CFD9C010F34D0F60CFD9BF90F350D0200000009000000010F34D1020000000100000006000000000F350CF6000000000CFD9BF90F350D020CFD9BFD0F350D060CFD9C090000000600000006000000030F34D106000000030CFD9C090F34D108000000040000000900000009000000010F34D102000000010000000600000004"
theorem small_4187941_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4187941_right_root small_4187941_right_fuel small_4187941_right_count small_4187941_right_encoded = true := by
  decide +kernel
theorem small_4187941_right_covered : CoveredBy scale carrier boxes small_4187941_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4187941_right_root small_4187941_right_fuel small_4187941_right_count small_4187941_right_encoded small_4187941_right_checked

theorem cover_4187941 : CoveredBy scale carrier boxes root_4187941 := by
  apply coveredBy_split_literal root_4187941 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.root_4187942 small_4187941_right_root coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.cover_4187942
  · exact small_4187941_right_covered
#print axioms cover_4187941

def root_4187936 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4187936_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4187936_right_fuel : Nat := 1
def small_4187936_right_count : Nat := 1
def small_4187936_right_encoded : String := "00000003"
theorem small_4187936_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4187936_right_root small_4187936_right_fuel small_4187936_right_count small_4187936_right_encoded = true := by
  decide +kernel
theorem small_4187936_right_covered : CoveredBy scale carrier boxes small_4187936_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4187936_right_root small_4187936_right_fuel small_4187936_right_count small_4187936_right_encoded small_4187936_right_checked

theorem cover_4187936 : CoveredBy scale carrier boxes root_4187936 := by
  apply coveredBy_split_literal root_4187936 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.root_4187941 small_4187936_right_root coord3 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.cover_4187941
  · exact small_4187936_right_covered
#print axioms cover_4187936

def root_4187935 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4187935_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4187935_right_fuel : Nat := 27
def small_4187935_right_count : Nat := 333
def small_4187935_right_encoded : String := "120701060000000308A913091207010800000004050000FA135D81050CFD9C010F34D0F60CFD9BF90F350D02045489FD1386AD0604548A091386710800000004000000070000000900000003138671060000000304548A090000000700000009000000010F34D10200000001045489FD1386AD0604548A091386710800000004000000071386AD08000000060000000400000003138671060000000304548A09000000071386AD08078000FA000000060000000600000004000000000F350CF6000000000CFD9BF90F350D02045489FD1386AD0604548A0913867108000000040C9A86F60F878D010C9A87020F8750F900000009000000010F878CF900000001078000FA128A7D05067ECE7D12EA9506022A4589000000070000000900000003000000070000000200000007000000000F875101000000000C9A87020F8750F9078000FA128A7D05067ECE7D12EA9506022A458913E1C5080000000400000007000000090000000312EA590600000003022A4589000000070000000800000002128A410500000002067ECE7D0000000700000007000000010F878CF900000001078000FA128A7D05067ECE7D12EA9506022A458913E1C508000000040B4D43F6000000070000000513E201080B4D43F610804D010DE7CA0200000008000000050000000000000005000000040000000312EA5906000000030000000500000002000000051386AD080C9A86F60F878D0100000009000000000F875101000000000C9A87020F8750F900000009000000010F878CF900000001078000FA128A7D050000000800000002000000050000000400000003138671060000000304548A0913867108000000040C9A86F60F878D010C9A8702000000070F878CF90000000100000007000000000F875101000000000C9A87020F8750F9078000FA128A7D05022A457D0000000700000007000000020000000500000001000000051386AD080C9A86F60F878D0100000009000000000F875101000000000C9A8702000000080000000500000004000000010F34D10200000001045489FD1386AD0604548A0913867108000000040C9A86F60F878D01078000FA128A7D050AD3577910D13D02067ECE7D12EA95060000000600000003000000060000000100000006000000020000000500000000000000051386AD080C9A86F60F878D01078000FA128A7D050AD3577910D13D0200000006000000010000000600000002000000050000000000000005000000040000000313867106000000030000000500000002135D4505000000020CFD9C010F34D0F60CFD9BF90F350D02045489FD00000007000000070000000100000007000000000F350CF6000000000CFD9BF90F350D02045489FD1386AD0604548A0913867108000000040C9A86F600000007000000051386AD080C9A86F600000009000000050000000400000003138671060000000304548A090000000700000005000000010F34D102000000010000000512073D08050000FA135D81050CFD9C010F34D0F600000009000000000F350CF6000000000CFD9BF90F350D02045489FD1386AD060CFD9C090F34D10800000004000000090000000900000003138671060000000300000009000000010F34D10200000001045489FD1386AD060CFD9C090F34D108000000040C9A86F60F878D01000000060000000000000005000000080000000313867106000000030000000800000002135D4505000000020CFD9C010F34D0F600000009000000000F350CF6000000000CFD9BF90F350D02045489FD00000009138671060000000300000009000000010F34D10200000001045489FD000000060000000500000004"
theorem small_4187935_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4187935_right_root small_4187935_right_fuel small_4187935_right_count small_4187935_right_encoded = true := by
  decide +kernel
theorem small_4187935_right_covered : CoveredBy scale carrier boxes small_4187935_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4187935_right_root small_4187935_right_fuel small_4187935_right_count small_4187935_right_encoded small_4187935_right_checked

theorem cover_4187935 : CoveredBy scale carrier boxes root_4187935 := by
  apply coveredBy_split_literal root_4187935 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.root_4187936 small_4187935_right_root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.cover_4187936
  · exact small_4187935_right_covered
#print axioms cover_4187935

def root_4187930 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4187930_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4187930_right_fuel : Nat := 1
def small_4187930_right_count : Nat := 1
def small_4187930_right_encoded : String := "00000001"
theorem small_4187930_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4187930_right_root small_4187930_right_fuel small_4187930_right_count small_4187930_right_encoded = true := by
  decide +kernel
theorem small_4187930_right_covered : CoveredBy scale carrier boxes small_4187930_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4187930_right_root small_4187930_right_fuel small_4187930_right_count small_4187930_right_encoded small_4187930_right_checked

theorem cover_4187930 : CoveredBy scale carrier boxes root_4187930 := by
  apply coveredBy_split_literal root_4187930 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.root_4187935 small_4187930_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.cover_4187935
  · exact small_4187930_right_covered
#print axioms cover_4187930

def root_4187929 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4187929_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4187929_right_fuel : Nat := 19
def small_4187929_right_count : Nat := 73
def small_4187929_right_encoded : String := "120701020000000108A912FD12073D0608A913091207010800000004050000FA135D81050CFD9C010F34D0F600000006000000000F350CF600000000045489F91386AD020CFD9BFD0F350D0604548A0913867108000000040C9A86F6000000060F875101000000000C9A870600000006000000060000000600000003000000060000000113867102000000010CFD9BFD0F350D06000000060000000300000006000000020000000612073D08050000FA00000006000000060000000400000003120701060000000308A913091207010800000004050000FA135D81050CFD9C01000000060F350CF60000000000000005000000020000000512073D08050000FA135D81050CFD9C01000000060F350CF60000000000000006000000020000000600000004"
theorem small_4187929_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4187929_right_root small_4187929_right_fuel small_4187929_right_count small_4187929_right_encoded = true := by
  decide +kernel
theorem small_4187929_right_covered : CoveredBy scale carrier boxes small_4187929_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4187929_right_root small_4187929_right_fuel small_4187929_right_count small_4187929_right_encoded small_4187929_right_checked

theorem cover_4187929 : CoveredBy scale carrier boxes root_4187929 := by
  apply coveredBy_split_literal root_4187929 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.root_4187930 small_4187929_right_root coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.cover_4187930
  · exact small_4187929_right_covered
#print axioms cover_4187929

def root_4187923 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4187923_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4187923_left_fuel : Nat := 1
def small_4187923_left_count : Nat := 1
def small_4187923_left_encoded : String := "00000000"
theorem small_4187923_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4187923_left_root small_4187923_left_fuel small_4187923_left_count small_4187923_left_encoded = true := by
  decide +kernel
theorem small_4187923_left_covered : CoveredBy scale carrier boxes small_4187923_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4187923_left_root small_4187923_left_fuel small_4187923_left_count small_4187923_left_encoded small_4187923_left_checked

theorem cover_4187923 : CoveredBy scale carrier boxes root_4187923 := by
  apply coveredBy_split_literal root_4187923 small_4187923_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.root_4187929 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_4187923_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.cover_4187929
#print axioms cover_4187923

def root_4187717 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4187717_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4187717_left_fuel : Nat := 16
def small_4187717_left_count : Nat := 97
def small_4187717_left_encoded : String := "120700F608A912F912073D0208A912FD12073D0608A913091207010800000004050000FA135D810504548A01138670F60CFD9BF90F350D02000000090000000100000006000000001386ACF6000000000CFD9BF90F350D020CFD9BFD000000090F34D1060000000300000009000000010F34D102000000010000000600000002135D45050000000204548A01000000061386ACF6000000000CFD9BF90F350D0200000009000000010000000612073D08050000FA135D810504548A01000000091386ACF6000000000CFD9BF9000000090000000900000002135D45050000000204548A0100000006000000090000000400000003120701060000000308A913091207010800000004050000FA135D810504548A01000000071386ACF6000000000CFD9BF9000000090F34D10200000001045489FD000000060000000600000002000000070000000900000001120701020000000108A912FD12073D060000000600000003120701060000000308A913090000000612073D08000000060000000400000000"
theorem small_4187717_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4187717_left_root small_4187717_left_fuel small_4187717_left_count small_4187717_left_encoded = true := by
  decide +kernel
theorem small_4187717_left_covered : CoveredBy scale carrier boxes small_4187717_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4187717_left_root small_4187717_left_fuel small_4187717_left_count small_4187717_left_encoded small_4187717_left_checked

theorem cover_4187717 : CoveredBy scale carrier boxes root_4187717 := by
  apply coveredBy_split_literal root_4187717 small_4187717_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.root_4187923 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_4187717_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.cover_4187923
#print axioms cover_4187717

def root_4187712 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4187712_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4187712_right_fuel : Nat := 1
def small_4187712_right_count : Nat := 1
def small_4187712_right_encoded : String := "00000004"
theorem small_4187712_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4187712_right_root small_4187712_right_fuel small_4187712_right_count small_4187712_right_encoded = true := by
  decide +kernel
theorem small_4187712_right_covered : CoveredBy scale carrier boxes small_4187712_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4187712_right_root small_4187712_right_fuel small_4187712_right_count small_4187712_right_encoded small_4187712_right_checked

theorem cover_4187712 : CoveredBy scale carrier boxes root_4187712 := by
  apply coveredBy_split_literal root_4187712 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.root_4187717 small_4187712_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.cover_4187717
  · exact small_4187712_right_covered
#print axioms cover_4187712

def root_4187636 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4187636_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4187636_left_fuel : Nat := 14
def small_4187636_left_count : Nat := 35
def small_4187636_left_encoded : String := "1151E9090000000408A91301120700F608A912F900000009000000060000000012073CF60000000008A912F912073D0208A912FD12073D06050000FA135D81050500010800000006135D81090CFD9C01000000060F350CF600000000000000060000000400000002000000060000000312070106000000030000000900000001120701020000000100000006"
theorem small_4187636_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4187636_left_root small_4187636_left_fuel small_4187636_left_count small_4187636_left_encoded = true := by
  decide +kernel
theorem small_4187636_left_covered : CoveredBy scale carrier boxes small_4187636_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4187636_left_root small_4187636_left_fuel small_4187636_left_count small_4187636_left_encoded small_4187636_left_checked

theorem cover_4187636 : CoveredBy scale carrier boxes root_4187636 := by
  apply coveredBy_split_literal root_4187636 small_4187636_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.root_4187712 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_4187636_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.cover_4187712
#print axioms cover_4187636

def root_4187630 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4187630_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4187630_left_fuel : Nat := 1
def small_4187630_left_count : Nat := 1
def small_4187630_left_encoded : String := "00000003"
theorem small_4187630_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4187630_left_root small_4187630_left_fuel small_4187630_left_count small_4187630_left_encoded = true := by
  decide +kernel
theorem small_4187630_left_covered : CoveredBy scale carrier boxes small_4187630_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4187630_left_root small_4187630_left_fuel small_4187630_left_count small_4187630_left_encoded small_4187630_left_checked

theorem cover_4187630 : CoveredBy scale carrier boxes root_4187630 := by
  apply coveredBy_split_literal root_4187630 small_4187630_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.root_4187636 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_4187630_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.cover_4187636
#print axioms cover_4187630

def root_4187248 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4187248_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4187248_left_fuel : Nat := 25
def small_4187248_left_count : Nat := 181
def small_4187248_left_encoded : String := "1151E8FD0A0001081151E90900000004000000061152250908A91301120700F608A912F912073D0208A9130912070108000000040000000600000006000000011207010200000001000000060000000012073CF60000000008A912F912073D0208A913091207010800000004050000FA135D810505000106135D44FD0CFD9C01000000080F350CF6000000000CFD9BF9000000080F34D102000000010000000800000003135D80FD000000030CFD9C010F34D0F60CFD9BF9000000080F34D1020000000100000006000000000F350CF6000000000CFD9BF90F350D0204548A0913867108000000040C9A86F6000000050F875101000000000C9A870200000005000000081386AD080C9A86F60F878D0100000005000000000F875101000000000C9A87020000000A0F878CF900000001078000FA0000000A0000000600000004000000010F34D1020000000104548A091386710800000004000000080000000600000002135D45050000000205000106135D44FD0CFD9C01000000060F350CF6000000000CFD9BF9000000060000000600000003135D80FD000000030CFD9C01000000060F350CF6000000000CFD9BF90F350D0204548A0913867108000000040000000800000006000000010F34D102000000010000000612073D08050000FA135D810505000106135D44FD0CFD9C01000000060F350CF6000000000CFD9BF9000000060000000600000003135D80FD000000030CFD9C01000000060F350CF6000000000CFD9BF90F350D020CFD9C090F34D108000000040C9A86F6000000060F875101000000000C9A87020000000A0000000600000006000000010F34D102000000010000000600000002000000060000000400000001120701020000000108A913091207010800000004050000FA135D81050500010600000006135D80FD000000030CFD9C01000000060F350CF600000000045489F900000006000000060000000200000006000000060000000400000003"
theorem small_4187248_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4187248_left_root small_4187248_left_fuel small_4187248_left_count small_4187248_left_encoded = true := by
  decide +kernel
theorem small_4187248_left_covered : CoveredBy scale carrier boxes small_4187248_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4187248_left_root small_4187248_left_fuel small_4187248_left_count small_4187248_left_encoded small_4187248_left_checked

theorem cover_4187248 : CoveredBy scale carrier boxes root_4187248 := by
  apply coveredBy_split_literal root_4187248 small_4187248_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.root_4187630 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_4187248_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.cover_4187630
#print axioms cover_4187248

def root_4187242 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4187242_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4187242_left_fuel : Nat := 1
def small_4187242_left_count : Nat := 1
def small_4187242_left_encoded : String := "00000002"
theorem small_4187242_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4187242_left_root small_4187242_left_fuel small_4187242_left_count small_4187242_left_encoded = true := by
  decide +kernel
theorem small_4187242_left_covered : CoveredBy scale carrier boxes small_4187242_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4187242_left_root small_4187242_left_fuel small_4187242_left_count small_4187242_left_encoded small_4187242_left_checked

theorem cover_4187242 : CoveredBy scale carrier boxes root_4187242 := by
  apply coveredBy_split_literal root_4187242 small_4187242_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.root_4187248 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_4187242_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.cover_4187248
#print axioms cover_4187242

def root_4167044 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4167044 : CoveredBy scale carrier boxes root_4167044 := by
  apply coveredBy_split_literal root_4167044 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.root_4167045 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.root_4187242 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.cover_4167045
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.cover_4187242
#print axioms cover_4167044

def root_4167038 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4167038_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4167038_left_fuel : Nat := 1
def small_4167038_left_count : Nat := 1
def small_4167038_left_encoded : String := "00000001"
theorem small_4167038_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4167038_left_root small_4167038_left_fuel small_4167038_left_count small_4167038_left_encoded = true := by
  decide +kernel
theorem small_4167038_left_covered : CoveredBy scale carrier boxes small_4167038_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4167038_left_root small_4167038_left_fuel small_4167038_left_count small_4167038_left_encoded small_4167038_left_checked

theorem cover_4167038 : CoveredBy scale carrier boxes root_4167038 := by
  apply coveredBy_split_literal root_4167038 small_4167038_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.root_4167044 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_4167038_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.cover_4167044
#print axioms cover_4167038

def root_4165974 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4165974_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4165974_left_fuel : Nat := 34
def small_4165974_left_count : Nat := 491
def small_4165974_left_encoded : String := "1151E8F90A0000FA115225050A0001061151E8FD0A0001081151E90900000004000000051152250908A91301120700F608A91305120700FA0000000500000002000000050000000012073CF60000000008A91305120700FA0000000500000002000000050000000400000003115224FD000000030A0001081151E9090000000408A913010000000912073CF60000000008A91305120700FA0000000500000002000000091152250908A91301120700F608A91305120700FA08A912FD12073D0608A9130912070108000000040500010200000005135D80F900000001000000050000000500000003000000050000000212073CFA0000000208A912FD12073D0608A9130912070108000000040500010200000005135D80F9000000010000000500000005000000031207010600000003000000090000000012073CF60000000008A91305120700FA08A912FD12073D0608A9130912070108000000040500010200000005135D80F900000001000000050000000500000003120701060000000308A9130900000005000000080000000212073CFA0000000208A912FD12073D0608A9130912070108000000040500010200000005135D80F9000000010CFD9C010F34D0F600000005000000000F350CF6000000000CFD9C050F34D0FA00000005000000020F350CFA000000020CFD9BFD0F350D0600000005000000030F34D1060000000304548A0913867108000000040C9A86F6000000050F875101000000000C9A86FA000000050F875105000000020780010200000005128A7CF9000000010AD3577D0000000910D1010600000003000000061386AD080C9A86F6000000050F875101000000000C9A86FA00000005000000090000000412073D080500010200000005135D80F9000000010CFD9C010F34D0F600000005000000000F350CF6000000000CFD9C050F34D0FA00000005000000020F350CFA000000020CFD9BFD0F350D0600000005000000030F34D10600000003000000090000000400000003120701060000000308A91309120701080000000405000102135D44F90CFD9C010F34D0F600000005000000000F350CF6000000000CFD9C050F34D0FA00000005000000020000000900000001135D80F9000000010CFD9C010F34D0F60CFD9C050000000500000009000000000F350CF6000000000CFD9C050F34D0FA045489FD0000000500000008000000020F350CFA00000002045489FD1386AD0604548A0913867108000000040C9A86F60F878D0100000009000000000F875101000000000C9A86FA000000060F87510500000002000000090000000900000003138671060000000304548A0913867108000000040C9A86F60F878D0100000009000000000F87510100000000000000080000000912073D08000000090000000400000004000000021151E905000000020A0001061151E8FD0A000108000000051152250908A91301120700F6000000050000000012073CF60000000008A9130912070108000000040500010200000005135D80F900000001050000FA00000005135D4505000000020500010600000005135D80FD000000030CFD9C010000000A0F350CF6000000000000000A12073D080500010200000005135D80F900000001050000FA00000005135D450500000002050001060000000500000009000000040000000400000003115224FD000000030A0001081151E90900000004000000091152250908A91301120700F608A912FD12073D0608A9130912070108000000040000000900000009000000031207010600000003000000090000000012073CF60000000008A912FD12073D0608A91309120701080000000405000102135D44F9050000FA135D81050CFD9C01000000090F350CF6000000000CFD9BFD000000090F34D106000000030000000900000002135D4505000000020000000900000001135D80F900000001050000FA135D81050CFD9C010F34D0F600000009000000000F350CF6000000000CFD9BFD0F350D0604548A0913867108000000040C9A86F6000000050F875101000000000C9A8706000000050F878CFD000000030780010200000005128A7CF9000000010000000900000009000000030F34D1060000000304548A0913867108000000040C9A86F6000000090F875101000000000780010200000009128A7CF900000001000000090000000900000002135D4505000000020CFD9C010F34D0F600000009000000000F350CF6000000000CFD9BFD0F350D0604548A0913867108000000040C9A86F6000000090F875101000000000000000900000009000000030F34D106000000030000000912073D080500010200000009135D80F900000001050000FA135D81050CFD9C01000000090000000900000002135D450500000002000000090000000400000003120701060000000308A91309120701080000000405000102135D44F90000000900000001135D80F900000001050000FA135D81050CFD9C01000000090F350CF600000000045489FD1386AD0604548A0913867108000000040C9A86F6000000090F87510100000000000000090000000900000003138671060000000304548A0913867108000000040C9A86F6000000070F87510100000000000000090000000900000002135D4505000000020CFD9C01000000090F350CF600000000045489FD00000009138671060000000300000009000000090000000400000001"
theorem small_4165974_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4165974_left_root small_4165974_left_fuel small_4165974_left_count small_4165974_left_encoded = true := by
  decide +kernel
theorem small_4165974_left_covered : CoveredBy scale carrier boxes small_4165974_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4165974_left_root small_4165974_left_fuel small_4165974_left_count small_4165974_left_encoded small_4165974_left_checked

theorem cover_4165974 : CoveredBy scale carrier boxes root_4165974 := by
  apply coveredBy_split_literal root_4165974 small_4165974_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.root_4167038 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_4165974_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.cover_4167038
#print axioms cover_4165974

def root_4165969 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4165969_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4165969_right_fuel : Nat := 1
def small_4165969_right_count : Nat := 1
def small_4165969_right_encoded : String := "00000000"
theorem small_4165969_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4165969_right_root small_4165969_right_fuel small_4165969_right_count small_4165969_right_encoded = true := by
  decide +kernel
theorem small_4165969_right_covered : CoveredBy scale carrier boxes small_4165969_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4165969_right_root small_4165969_right_fuel small_4165969_right_count small_4165969_right_encoded small_4165969_right_checked

theorem cover_4165969 : CoveredBy scale carrier boxes root_4165969 := by
  apply coveredBy_split_literal root_4165969 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.root_4165974 small_4165969_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.cover_4165974
  · exact small_4165969_right_covered
#print axioms cover_4165969

def root_4195778 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4195778 : CoveredBy scale carrier boxes root_4195778 := by
  apply coveredBy_split_literal root_4195778 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1570.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1571.root coord1 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1570.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1571.covered
#print axioms cover_4195778

def root_4195773 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4195773_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4195773_right_fuel : Nat := 1
def small_4195773_right_count : Nat := 1
def small_4195773_right_encoded : String := "00000000"
theorem small_4195773_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4195773_right_root small_4195773_right_fuel small_4195773_right_count small_4195773_right_encoded = true := by
  decide +kernel
theorem small_4195773_right_covered : CoveredBy scale carrier boxes small_4195773_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4195773_right_root small_4195773_right_fuel small_4195773_right_count small_4195773_right_encoded small_4195773_right_checked

theorem cover_4195773 : CoveredBy scale carrier boxes root_4195773 := by
  apply coveredBy_split_literal root_4195773 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.root_4195778 small_4195773_right_root coord0 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.cover_4195778
  · exact small_4195773_right_covered
#print axioms cover_4195773

def root_4195772 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4195772_right_root : ZRayBox := fun j => (#[⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4195772_right_fuel : Nat := 17
def small_4195772_right_count : Nat := 121
def small_4195772_right_encoded : String := "135D4501000000000CFD9BF90F350D020CFD9C050F34D0FA0CFD9BFD0F350D0604548A0900000008000000070000000300000008000000020F350CFA000000020CFD9BFD0F350D0604548A0913867108000000040C9A87020F8750F90C9A86FA0F878D0500000006000000020F875105000000020C9A87060F8750FD028000F600000007000000070000000300000008000000010F878CF9000000010C9A86FA0F878D050C9A87060000000700000008000000020F875105000000020C9A87060F8750FD028000F6000000070000000700000003000000081386AD080C9A8702000000080F878CF9000000010C9A86FA000000070F875105000000020C9A8706000000070000000800000004000000030F34D1060000000300000008000000010F34D102000000010CFD9C050F34D0FA0CFD9BFD0F350D0600000007000000030F34D1060000000300000008000000020F350CFA000000020CFD9BFD0F350D0604548A0913867108000000040C9A86FA0F878D050C9A8706000000070F878CFD0000000300000008000000020F875105000000020C9A87060F8750FD028000F6000000070000000500000003000000051386AD080C9A86FA000000070F875105000000020C9A8706000000070000000500000004000000030F34D1060000000300000008"
theorem small_4195772_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4195772_right_root small_4195772_right_fuel small_4195772_right_count small_4195772_right_encoded = true := by
  decide +kernel
theorem small_4195772_right_covered : CoveredBy scale carrier boxes small_4195772_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4195772_right_root small_4195772_right_fuel small_4195772_right_count small_4195772_right_encoded small_4195772_right_checked

theorem cover_4195772 : CoveredBy scale carrier boxes root_4195772 := by
  apply coveredBy_split_literal root_4195772 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.root_4195773 small_4195772_right_root coord0 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.cover_4195773
  · exact small_4195772_right_covered
#print axioms cover_4195772

def root_4195766 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4195766_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4195766_left_fuel : Nat := 1
def small_4195766_left_count : Nat := 1
def small_4195766_left_encoded : String := "00000004"
theorem small_4195766_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4195766_left_root small_4195766_left_fuel small_4195766_left_count small_4195766_left_encoded = true := by
  decide +kernel
theorem small_4195766_left_covered : CoveredBy scale carrier boxes small_4195766_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4195766_left_root small_4195766_left_fuel small_4195766_left_count small_4195766_left_encoded small_4195766_left_checked

theorem cover_4195766 : CoveredBy scale carrier boxes root_4195766 := by
  apply coveredBy_split_literal root_4195766 small_4195766_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.root_4195772 coord4 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_4195766_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106.cover_4195772
#print axioms cover_4195766

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0106
