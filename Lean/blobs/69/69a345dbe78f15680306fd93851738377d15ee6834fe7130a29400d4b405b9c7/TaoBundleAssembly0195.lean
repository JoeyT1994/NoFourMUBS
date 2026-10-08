import TaoBundleAssembly0194
import TaoBundleChunkBatch0758
import TaoBundleChunkBatch0759
import TaoBundleChunkBatch0760
import TaoBundleChunkBatch0761
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195
def root_8075671 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8075671_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8075671_right_fuel : Nat := 27
def small_8075671_right_count : Nat := 323
def small_8075671_right_encoded : String := "115224FF0000000408A91301120701000000000008A91307120701060000000308A912FF12073D08050000F80000000A0000000500000004000000080000000A12073D0008A91307120701060000000308A912FF12073D08050000F8135D80F900000001050000FA135D81050CFD9C010F34D100000000000000000A0F350D0004548A07000000061386AD060CFD9BFF000000060000000A000000030000000000000002135D4505000000020CFD9C010F34D100000000000000000A0F350D0004548A0713867106000000030CFD9BFF000000060000000A1386AD060CFD9BFF0F350D080C9A87000F87510100000000000000090000000A000000040000000A0000000300000000135D44F9050000FA135D81050CFD9C010F34D1000000000004548A07000000081386AD060CFD9BFF0F350D080C9A870800000008000000050000000400000008000000030F350D0004548A0713867106000000030CFD9BFF000000060F34D10800000004000000051386AD060CFD9BFF0F350D080C9A87000F87510100000000000000060F878D010C9A87080F8750FF00000006000000040000000600000000000000040F34D108000000040C9A87000F875101000000000000000600000005000000030000000000000002135D4505000000020CFD9C010F34D10000000000000000050F350D0004548A071386710600000003000000051386AD060CFD9BFF0F350D080C9A87000F875101000000000000000900000005000000040F34D1080000000400000005000000030000000000000001000000041207010800000004050000F80000000A0000000512073D0608A912FF12073D08050000F8135D80F900000001050000FA135D81050CFD9C010F34D100000000000000000A0F350D000CFD9C070F34D106000000030CFD9BFF0F350D080C9A87000F875101000000000C9A87080F8750FF0000000600000004000000060000000A000000040000000A0F350D060000000A000000030000000000000002135D4505000000020CFD9C010000000A0F350D000CFD9C070000000A0000000A00000000135D44F9050000FA135D81050CFD9C010F34D100000000000CFD9C070000000A0000000A0F350D000CFD9C070F34D106000000030CFD9BFF0F350D080C9A87000F875101000000000C9A87080F8750FF028000F813D7ECF9000000010000000913D7B0F9078000FA128A7D0500000006000000020000000900000001000000040F878CFF00000004028000F800000009000000090F878D010C9A87080F8750FF028000F80000000A13D7B0F9078000FA128A7D050AD35787000000060000000A000000020000000A00000001000000040F878CFF000000040000000A00000000000000040F34D108000000040000000A0F350D060CFD9BFF0F350D080C9A87000F875101000000000C9A87060000000A0F878D070C9A87080F8750FF028000F800000009000000090000000400000009000000030F878D010000000A00000000000000040000000A000000030000000000000002135D4505000000020CFD9C010F34D100000000000000000A0F350D000CFD9C070F34D106000000030CFD9BFF0F350D080C9A87000F87510100000000000000090F878D010C9A87080F8750FF00000009000000040000000500000000000000040F34D10800000004000000050F350D060CFD9BFF0F350D080C9A87000F87510100000000000000090000000A000000040000000A0000000300000000000000010000000412070108000000040000000A0000000300000000"
theorem small_8075671_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8075671_right_root small_8075671_right_fuel small_8075671_right_count small_8075671_right_encoded = true := by
  decide +kernel
theorem small_8075671_right_covered : CoveredBy scale carrier boxes small_8075671_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8075671_right_root small_8075671_right_fuel small_8075671_right_count small_8075671_right_encoded small_8075671_right_checked

theorem cover_8075671 : CoveredBy scale carrier boxes root_8075671 := by
  apply coveredBy_split_literal root_8075671 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.root_8075672 small_8075671_right_root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.cover_8075672
  · exact small_8075671_right_covered
#print axioms cover_8075671

def root_8075666 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8075666_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8075666_right_fuel : Nat := 1
def small_8075666_right_count : Nat := 1
def small_8075666_right_encoded : String := "00000003"
theorem small_8075666_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8075666_right_root small_8075666_right_fuel small_8075666_right_count small_8075666_right_encoded = true := by
  decide +kernel
theorem small_8075666_right_covered : CoveredBy scale carrier boxes small_8075666_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8075666_right_root small_8075666_right_fuel small_8075666_right_count small_8075666_right_encoded small_8075666_right_checked

theorem cover_8075666 : CoveredBy scale carrier boxes root_8075666 := by
  apply coveredBy_split_literal root_8075666 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.root_8075671 small_8075666_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.cover_8075671
  · exact small_8075666_right_covered
#print axioms cover_8075666

def root_8075536 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8075536_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8075536_left_fuel : Nat := 15
def small_8075536_left_count : Nat := 61
def small_8075536_left_encoded : String := "1151E907000000030A0001081151E8FF08A9130112070100000000000000000A12073D00050000F8135D80F900000001050000FA135D81050500010600000005135D810705000108000000050000000A000000030000000200000008135D44F9050000FA135D8105050001060000000A135D810705000108135D44FF0000000800000004135D80FF000000040CFD9C010000000A00000008000000030000000200000008000000010000000000000004115224FF0000000408A9130112070100000000000000000A12073D0008A912FF12073D08050000F80000000A135D44F90000000A00000001000000040000000A00000000"
theorem small_8075536_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8075536_left_root small_8075536_left_fuel small_8075536_left_count small_8075536_left_encoded = true := by
  decide +kernel
theorem small_8075536_left_covered : CoveredBy scale carrier boxes small_8075536_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8075536_left_root small_8075536_left_fuel small_8075536_left_count small_8075536_left_encoded small_8075536_left_checked

theorem cover_8075536 : CoveredBy scale carrier boxes root_8075536 := by
  apply coveredBy_split_literal root_8075536 small_8075536_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.root_8075666 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8075536_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.cover_8075666
#print axioms cover_8075536

def root_8075530 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8075530_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8075530_left_fuel : Nat := 1
def small_8075530_left_count : Nat := 1
def small_8075530_left_encoded : String := "00000002"
theorem small_8075530_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8075530_left_root small_8075530_left_fuel small_8075530_left_count small_8075530_left_encoded = true := by
  decide +kernel
theorem small_8075530_left_covered : CoveredBy scale carrier boxes small_8075530_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8075530_left_root small_8075530_left_fuel small_8075530_left_count small_8075530_left_encoded small_8075530_left_checked

theorem cover_8075530 : CoveredBy scale carrier boxes root_8075530 := by
  apply coveredBy_split_literal root_8075530 small_8075530_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.root_8075536 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_8075530_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.cover_8075536
#print axioms cover_8075530

def root_8073138 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8073138 : CoveredBy scale carrier boxes root_8073138 := by
  apply coveredBy_split_literal root_8073138 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3030.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.root_8075530 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3030.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.cover_8075530
#print axioms cover_8073138

def root_8073133 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8073133_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8073133_right_fuel : Nat := 1
def small_8073133_right_count : Nat := 1
def small_8073133_right_encoded : String := "00000001"
theorem small_8073133_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8073133_right_root small_8073133_right_fuel small_8073133_right_count small_8073133_right_encoded = true := by
  decide +kernel
theorem small_8073133_right_covered : CoveredBy scale carrier boxes small_8073133_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8073133_right_root small_8073133_right_fuel small_8073133_right_count small_8073133_right_encoded small_8073133_right_checked

theorem cover_8073133 : CoveredBy scale carrier boxes root_8073133 := by
  apply coveredBy_split_literal root_8073133 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.root_8073138 small_8073133_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.cover_8073138
  · exact small_8073133_right_covered
#print axioms cover_8073133

def root_8069713 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8069713 : CoveredBy scale carrier boxes root_8069713 := by
  apply coveredBy_split_literal root_8069713 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.root_8069714 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.root_8073133 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.cover_8069714
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.cover_8073133
#print axioms cover_8069713

def root_8069708 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8069708_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8069708_right_fuel : Nat := 1
def small_8069708_right_count : Nat := 1
def small_8069708_right_encoded : String := "00000000"
theorem small_8069708_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8069708_right_root small_8069708_right_fuel small_8069708_right_count small_8069708_right_encoded = true := by
  decide +kernel
theorem small_8069708_right_covered : CoveredBy scale carrier boxes small_8069708_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8069708_right_root small_8069708_right_fuel small_8069708_right_count small_8069708_right_encoded small_8069708_right_checked

theorem cover_8069708 : CoveredBy scale carrier boxes root_8069708 := by
  apply coveredBy_split_literal root_8069708 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.root_8069713 small_8069708_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.cover_8069713
  · exact small_8069708_right_covered
#print axioms cover_8069708

def root_8065200 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8065200 : CoveredBy scale carrier boxes root_8065200 := by
  apply coveredBy_split_literal root_8065200 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.root_8065201 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.root_8069708 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.cover_8065201
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.cover_8069708
#print axioms cover_8065200

def root_8083830 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8083830_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8083830_left_fuel : Nat := 32
def small_8083830_left_count : Nat := 299
def small_8083830_left_encoded : String := "1151E9090000000408A91301120701000000000008A912F912073CF80000000108A91305120700FA08A9130712070106000000030000000912073D0605000108135D45090000000404548A01000000090000000A135D810904548A0113867100000000000CFD9BF9000000090F34D0F800000009000000011386AD000000000A0000000000000004000000030000000212073CFA0000000208A913070000000A12073D060500010800000009135D81090000000A0000000400000003120700F808A91305120700FA08A9130712070106000000030000000A12073D0605000108135D45090000000404548A011386710000000000045489F900000009138670F800000009000000011386AD00045489F90000000A138670F804548A05138670FA0000000A00000002000000090000000100000000135D810904548A011386710000000000045489F91386ACF80000000104548A05138670FA000000090000000200000009138670F804548A05138670FA0CFD9C070F34D10600000003000000090F350D060C9A87060F8751070000000307800108128A41090000000400000009128A7D09022A45810000000513E20100022A45790000000513E1C4F8022A45850000000513E200FA000000020B4D440600000006000000090000000100000000000000040F878D070780010800000009128A7D09022A45810000000513E20100022A45790000000513E1C4F8000000090000000100000000000000040000000300000003000000021386ACFA000000020CFD9C070F34D10600000003000000090F350D060C9A87060F87510700000003000000090000000900000003000000011386AD00045489F91386ACF80000000104548A05138670FA0CFD9C070000000A0F350D060C9A87060F875107000000030000000A0000000A00000003000000020000000A138670F804548A05138670FA0CFD9C070F34D106000000030000000A0F350D060C9A87060F8751070000000307800108128A410900000004067ECE8112EA5900000000000000000A0000000A128A7D09067ECE8112EA590000000000022A45790000000713E1C4F8022A458513E1C4FA0B4D440610801107000000030000000700000008000000020000000A000000010000000A000000040F878D070000000A0000000300000003000000021386ACFA000000020000000A000000010000000000000004000000030000000212073CFA0000000208A9130712070106000000030000000912073D0605000108135D45090000000404548A01000000090000000A135D810904548A011386710000000000045489F900000009138670F80CFD9C050F34D0FA000000090000000200000009000000011386AD000000000A0000000000000004000000030000000112073D0008A912F912073CF80000000108A91305120700FA08A913070000000A0000000A000000020000000A120700F808A91305120700FA08A9130712070106000000030000000A12073D06050001080000000A135D81090CFD9C010F34D10000000000045489F90000000A138670F804548A05138670FA0CFD9C070000000A0000000A000000020000000A000000010000000A00000004000000030000000212073CFA0000000208A913070000000A0000000A0000000100000000"
theorem small_8083830_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8083830_left_root small_8083830_left_fuel small_8083830_left_count small_8083830_left_encoded = true := by
  decide +kernel
theorem small_8083830_left_covered : CoveredBy scale carrier boxes small_8083830_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8083830_left_root small_8083830_left_fuel small_8083830_left_count small_8083830_left_encoded small_8083830_left_checked

theorem cover_8083830 : CoveredBy scale carrier boxes root_8083830 := by
  apply coveredBy_split_literal root_8083830 small_8083830_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3034.root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8083830_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3034.covered
#print axioms cover_8083830

def root_8083825 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8083825_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8083825_right_fuel : Nat := 1
def small_8083825_right_count : Nat := 1
def small_8083825_right_encoded : String := "00000003"
theorem small_8083825_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8083825_right_root small_8083825_right_fuel small_8083825_right_count small_8083825_right_encoded = true := by
  decide +kernel
theorem small_8083825_right_covered : CoveredBy scale carrier boxes small_8083825_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8083825_right_root small_8083825_right_fuel small_8083825_right_count small_8083825_right_encoded small_8083825_right_checked

theorem cover_8083825 : CoveredBy scale carrier boxes root_8083825 := by
  apply coveredBy_split_literal root_8083825 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.root_8083830 small_8083825_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.cover_8083830
  · exact small_8083825_right_covered
#print axioms cover_8083825

def root_8082167 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8082167 : CoveredBy scale carrier boxes root_8082167 := by
  apply coveredBy_split_literal root_8082167 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3033.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.root_8083825 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3033.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.cover_8083825
#print axioms cover_8082167

def root_8082162 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8082162_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8082162_right_fuel : Nat := 1
def small_8082162_right_count : Nat := 1
def small_8082162_right_encoded : String := "00000002"
theorem small_8082162_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8082162_right_root small_8082162_right_fuel small_8082162_right_count small_8082162_right_encoded = true := by
  decide +kernel
theorem small_8082162_right_covered : CoveredBy scale carrier boxes small_8082162_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8082162_right_root small_8082162_right_fuel small_8082162_right_count small_8082162_right_encoded small_8082162_right_checked

theorem cover_8082162 : CoveredBy scale carrier boxes root_8082162 := by
  apply coveredBy_split_literal root_8082162 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.root_8082167 small_8082162_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.cover_8082167
  · exact small_8082162_right_covered
#print axioms cover_8082162

def root_8082161 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8082161_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8082161_right_fuel : Nat := 18
def small_8082161_right_count : Nat := 213
def small_8082161_right_encoded : String := "1151E905000000020A0001061151E907000000030A0001081151E9090000000408A91301120701000000000008A912F912073CF80000000100000006120700F8050000FA135D810505000106135D450700000003000000060000000A00000002000000060000000112073D0008A912F90000000A00000005000000001152250908A91301120701000000000008A912F912073CF80000000108A9130912070108000000040000000712073D08050000FA00000007135D45050000000205000106000000060000000A00000004120700F808A913091207010800000004050000FA000000070000000712073D08050000FA135D810505000106135D45070000000300000007135D810704548A01000000080000000A0000000300000002135D45050000000205000106135D45070000000304548A010000000600000007135D810704548A011386710000000000000000080000000500000003000000040000000112073D0008A912F912073CF80000000108A913090000000A12073D08050000FA0000000A0000000A00000004120700F808A913091207010800000004050000FA135D810505000106135D450700000003000000070000000A000000020000000A12073D08050000FA135D810505000106135D4507000000030CFD9C010F34D1000000000000000007000000050000000A00000002135D45050000000205000106135D450700000003000000050000000500000004000000010000000000000004115225070A0001081151E9090000000408A91301120701000000000008A912F900000009120700F808A913070000000A0000000A0000000112073D0008A912F912073CF80000000108A913071207010600000003000000090000000A120700F80000000A00000001000000001152250908A91301120701000000000008A912F912073CF80000000108A913070000000A12073D0608A913090000000A12073D080000000A0000000400000003120700F808A9130712070106000000030000000A12073D0608A913090000000A12073D08050000FA135D810504548A0113867100000000000000000A0000000A00000002135D4505000000020000000A00000004000000030000000112073D0008A912F90000000A120700F808A913070000000A0000000A00000001000000000000000400000003"
theorem small_8082161_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8082161_right_root small_8082161_right_fuel small_8082161_right_count small_8082161_right_encoded = true := by
  decide +kernel
theorem small_8082161_right_covered : CoveredBy scale carrier boxes small_8082161_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8082161_right_root small_8082161_right_fuel small_8082161_right_count small_8082161_right_encoded small_8082161_right_checked

theorem cover_8082161 : CoveredBy scale carrier boxes root_8082161 := by
  apply coveredBy_split_literal root_8082161 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.root_8082162 small_8082161_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.cover_8082162
  · exact small_8082161_right_covered
#print axioms cover_8082161

def root_8082155 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8082155_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8082155_left_fuel : Nat := 1
def small_8082155_left_count : Nat := 1
def small_8082155_left_encoded : String := "00000001"
theorem small_8082155_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8082155_left_root small_8082155_left_fuel small_8082155_left_count small_8082155_left_encoded = true := by
  decide +kernel
theorem small_8082155_left_covered : CoveredBy scale carrier boxes small_8082155_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8082155_left_root small_8082155_left_fuel small_8082155_left_count small_8082155_left_encoded small_8082155_left_checked

theorem cover_8082155 : CoveredBy scale carrier boxes root_8082155 := by
  apply coveredBy_split_literal root_8082155 small_8082155_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.root_8082161 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8082155_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.cover_8082161
#print axioms cover_8082155

def root_8082154 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8082154_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8082154_right_fuel : Nat := 17
def small_8082154_right_count : Nat := 137
def small_8082154_right_encoded : String := "1151E8F90A0000FA115225050A0001061151E907000000030A0001081151E9090000000408A913011207010000000000000000070000000A1152250908A9130112070100000000000000000712073D0008A91305120700FA0000000700000002000000070000000000000004115225070A0001081151E9090000000408A91301120701000000000008A91305120700FA0000000A000000020000000912073D0008A913050000000A12073CFA0000000208A913071207010600000003000000090000000A000000001152250908A91301120701000000000008A91305120700FA08A913070000000A12073D060000000A00000003000000020000000A12073D0008A91305120700FA08A913070000000A12073D0608A913091207010800000004000000070000000A000000030000000212073CFA0000000208A913070000000A12073D0608A913091207010800000004050000F80000000A000000080000000A00000003000000000000000400000003000000021151E905000000020A0001061151E907000000030A0001080000000A115225090000000A00000004115225070A0001081151E9090000000408A913010000000912073D0008A9130712070106000000030000000912073D06050000F80000000A0000000600000003000000001152250908A913010000000A12073D0008A91307120701060000000308A91309120701080000000400000008000000080000000A00000000000000040000000300000001"
theorem small_8082154_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8082154_right_root small_8082154_right_fuel small_8082154_right_count small_8082154_right_encoded = true := by
  decide +kernel
theorem small_8082154_right_covered : CoveredBy scale carrier boxes small_8082154_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8082154_right_root small_8082154_right_fuel small_8082154_right_count small_8082154_right_encoded small_8082154_right_checked

theorem cover_8082154 : CoveredBy scale carrier boxes root_8082154 := by
  apply coveredBy_split_literal root_8082154 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.root_8082155 small_8082154_right_root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.cover_8082155
  · exact small_8082154_right_covered
#print axioms cover_8082154

def root_8082149 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8082149_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8082149_right_fuel : Nat := 1
def small_8082149_right_count : Nat := 1
def small_8082149_right_encoded : String := "00000000"
theorem small_8082149_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8082149_right_root small_8082149_right_fuel small_8082149_right_count small_8082149_right_encoded = true := by
  decide +kernel
theorem small_8082149_right_covered : CoveredBy scale carrier boxes small_8082149_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8082149_right_root small_8082149_right_fuel small_8082149_right_count small_8082149_right_encoded small_8082149_right_checked

theorem cover_8082149 : CoveredBy scale carrier boxes root_8082149 := by
  apply coveredBy_split_literal root_8082149 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.root_8082154 small_8082149_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.cover_8082154
  · exact small_8082149_right_covered
#print axioms cover_8082149

def root_8079785 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8079785 : CoveredBy scale carrier boxes root_8079785 := by
  apply coveredBy_split_literal root_8079785 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3032.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.root_8082149 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3032.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.cover_8082149
#print axioms cover_8079785

def root_8065199 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8065199 : CoveredBy scale carrier boxes root_8065199 := by
  apply coveredBy_split_literal root_8065199 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.root_8065200 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.root_8079785 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.cover_8065200
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.cover_8079785
#print axioms cover_8065199

def root_8057637 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8057637 : CoveredBy scale carrier boxes root_8057637 := by
  apply coveredBy_split_literal root_8057637 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.root_8057638 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.root_8065199 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.cover_8057638
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.cover_8065199
#print axioms cover_8057637

def root_8050287 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8050287 : CoveredBy scale carrier boxes root_8050287 := by
  apply coveredBy_split_literal root_8050287 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.root_8050288 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.root_8057637 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.cover_8050288
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.cover_8057637
#print axioms cover_8050287

def root_8013993 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8013993 : CoveredBy scale carrier boxes root_8013993 := by
  apply coveredBy_split_literal root_8013993 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.root_8013994 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.root_8050287 coord3 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.cover_8013994
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.cover_8050287
#print axioms cover_8013993

def root_7759101 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_7759101 : CoveredBy scale carrier boxes root_7759101 := by
  apply coveredBy_split_literal root_7759101 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.root_7759102 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.root_8013993 coord2 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0194.cover_7759102
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.cover_8013993
#print axioms cover_7759101

def root_8088524 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8088524 : CoveredBy scale carrier boxes root_8088524 := by
  apply coveredBy_split_literal root_8088524 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3035.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3036.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3035.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3036.covered
#print axioms cover_8088524

def root_8088519 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8088519_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8088519_right_fuel : Nat := 1
def small_8088519_right_count : Nat := 1
def small_8088519_right_encoded : String := "00000000"
theorem small_8088519_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8088519_right_root small_8088519_right_fuel small_8088519_right_count small_8088519_right_encoded = true := by
  decide +kernel
theorem small_8088519_right_covered : CoveredBy scale carrier boxes small_8088519_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8088519_right_root small_8088519_right_fuel small_8088519_right_count small_8088519_right_encoded small_8088519_right_checked

theorem cover_8088519 : CoveredBy scale carrier boxes root_8088519 := by
  apply coveredBy_split_literal root_8088519 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.root_8088524 small_8088519_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.cover_8088524
  · exact small_8088519_right_covered
#print axioms cover_8088519

def root_8087881 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8087881_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8087881_left_fuel : Nat := 21
def small_8087881_left_count : Nat := 301
def small_8087881_left_encoded : String := "1151E901000000000A0000F8115224F9000000010A0001041151E8FB0A0000FC115224FD000000030A0000FE115224FF0000000408A912F912073CF80000000108A912FD12073CFC0000000308A912FF0000000900000009120700FC0000000800000003120700F808A912FD12073CFC0000000308A912FF12073CFE0000000405000100135D450100000000050001040000000900000008135D810105000104000000090000000800000000120700FE0000000900000004120700FC08A912FF000000080000000800000003000000011151E8FF08A912F912073CF80000000108A912FD12073CFC000000030500010000000008135D810105000104135D44FB0000000900000002000000080000000000000008120700F808A912FD12073CFC0000000305000100135D45010000000005000104135D44FB050000FE00000008135D44FF00000008000000040000000200000008135D810105000104135D44FB050000FE135D80FF00000004045489F90000000800000008135D44FF00000007000000040000000200000008000000000000000800000001000000041151E8FD0A0000FE115224FF0000000408A912F900000009120700F808A912FF12073CFE0000000405000100000000090000000900000009000000011151E8FF08A912F912073CF800000001050001000000000A000000090000000A000000040000000300000002115224FB000000020A0000FC115224FD000000030A0000FE115224FF0000000408A912F912073CF80000000108A912FB12073D0408A912FD12073CFC0000000308A912FF00000008120700FE00000008000000040000000800000002120701040000000200000005120700F808A912FB12073D0408A912FD12073CFC0000000308A912FF0000000800000005000000050000000200000005000000011151E8FF00000008000000041151E8FD0A0000FE115224FF0000000408A912F912073CF80000000108A912FB12073D0408A912FF12073CFE00000004050001000000000800000009120700FE000000090000000400000002120701040000000208A912FF0000000800000005120700F808A912FB12073D0408A912FF12073CFE0000000405000100135D45010000000000000005135D8101050000FC00000005135D44FD045489F900000008000000050000000300000000000000050000000200000005000000011151E8FF08A912F900000008120700F808A912FB12073D040500010000000008135D8101050000FC00000008135D44FD050000FE00000008000000070000000300000000000000021207010400000002000000080000000100000004000000031151E8F90A0001041151E8FB0A0000FC115224FD000000030A0000FE115224FF0000000408A912FD12073CFC0000000308A912FF12073CFE000000040500010000000008135D8101050000F800000008135D44F900000008000000010000000000000009120700FC00000008000000031151E8FF00000008000000041151E8FD000000090000000300000002115224FB000000020A0000FC115224FD000000030A0000FE000000081151E8FF00000008000000041151E8FD0A0000FE115224FF0000000408A912FB000000091207010400000002000000081151E8FF00000008000000040000000300000001"
theorem small_8087881_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8087881_left_root small_8087881_left_fuel small_8087881_left_count small_8087881_left_encoded = true := by
  decide +kernel
theorem small_8087881_left_covered : CoveredBy scale carrier boxes small_8087881_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8087881_left_root small_8087881_left_fuel small_8087881_left_count small_8087881_left_encoded small_8087881_left_checked

theorem cover_8087881 : CoveredBy scale carrier boxes root_8087881 := by
  apply coveredBy_split_literal root_8087881 small_8087881_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.root_8088519 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8087881_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.cover_8088519
#print axioms cover_8087881

def root_8087880 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8087880 : CoveredBy scale carrier boxes root_8087880 := by
  apply coveredBy_split_literal root_8087880 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.root_8087881 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3037.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.cover_8087881
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3037.covered
#print axioms cover_8087880

def root_8104437 : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(-9480640), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(-1816224), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8104437_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(-9480640), (-8388608)⟩, ⟨(-13841408), (-13026304)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(-1816224), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8104437_right_fuel : Nat := 1
def small_8104437_right_count : Nat := 1
def small_8104437_right_encoded : String := "00000001"
theorem small_8104437_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8104437_right_root small_8104437_right_fuel small_8104437_right_count small_8104437_right_encoded = true := by
  decide +kernel
theorem small_8104437_right_covered : CoveredBy scale carrier boxes small_8104437_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8104437_right_root small_8104437_right_fuel small_8104437_right_count small_8104437_right_encoded small_8104437_right_checked

theorem cover_8104437 : CoveredBy scale carrier boxes root_8104437 := by
  apply coveredBy_split_literal root_8104437 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3042.root small_8104437_right_root coord1 true (-13841408)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3042.covered
  · exact small_8104437_right_covered
#print axioms cover_8104437

def root_8103661 : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(-1816224), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8103661_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(-10572672), (-9480640)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(-1816224), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8103661_left_fuel : Nat := 24
def small_8103661_left_count : Nat := 371
def small_8103661_left_encoded : String := "10804CF9000000010DE7CA040E5FD8FB0B4D43FC10804CFD000000030640010012FF7101000000000115233F13F895080BF3E578000000051008ECF90D412884000000050EFA4CFB000000020000000500000001000000040000000512FFAD010115233F13F895080BF3E578100928F9000000010D4128840EFA10FB0BF3E57C000000051008ECFD0000000A00000003000000020EFA4CFB000000020BF3E57C000000051008ECFD0000000A000000031008ECF90D4128840EFA10FB0BF3E57C100928FD000000030000000A1008ECFD06E0010012C7E50100000000019FB45F00000006000000050000000A00000003000000020EFA4CFB000000020BF3E57C0000000A1008ECFD06E0010012C7E50100000000019FB45F13EF35080BA094B8000000071045C8F90D9479440EAEACFB0000000A000000020000000700000001000000040000000A0000000A00000003000000010000000413F85908000000040BF3E5780000000A1008ECF90D4128840000000A0000000A0000000100000000108010FD0640010012FF7101000000000115233F13F895080BF3E578100928F9000000010D412884000000060EFA4CFB00000002000000061008ECF90D412884000000060EFA4CFB000000020AA6A27C10EDACFD0000000305A0010013313501000000000000000513317101019FB45F0000000613EEF908000000040BA094B8000000051045C8F90D947944000000050EAEE8FB0000000200000007000000010000000000000006000000010000000413F85908000000040BF3E578100928F9000000010D412884000000050EFA4CFB0000000200000005000000AC12FFAD010115233F13F895080BF3E578100928F9000000010D412884000000060EFA4CFB000000020AA6A27C10EDACFD0000000300000007000000061008ECF90D4128840EFA10FB00000006000000020EFA4CFB000000020AA6A27C10EDACFD0000000306E0010012C7E50100000000019FB45F0000000613EEF908000000040BA094B8000000061045C8F90D94794400000006000000070000000112C82101019FB45F000000070000000A0000000010ED70FD0000000600000003000000010000000413F85908000000040BF3E578100928F9000000010D4128840EFA10FB00000006000000020000000A1008ECF90D4128840EFA10FB0AA6A27C0000000A00000006000000020EFA4CFB000000020AA6A27C0000000A10ED70FD06E0010012C7E50100000000008A921F00000006000000080000000A00000003000000010000000000000003000000020E6014FB000000020B4D43FC10804CFD000000030640010012FF7101000000000115233F13F895080DAED87B0E966104000000050000000200000005000000040000000512FFAD010115233F13F895080DAED87B0E9661040BF3E578100928F9000000010BF3E57C00000005000000071008ECF90BF3E57C0000000A1008ECFD06E00100000000070000000A0000000300000001000000020E962504000000020BF3E578000000071008ECF90BF3E57C0000000800000007000000010000000413F85908000000040DAED87B0000000A0E962504000000020000000A00000000108010FD0640010012FF7101000000000115233F13F895080DAED87B0E9661040BF3E578000000071008ECF90AA6A27C10EDACFD0000000300000007000000070000000100000002000000070000000413F85908000000040DAED87B0E9661040BF3E578100928F9000000010AA6A27C0000000500000007000000AC000000020E962504000000020BF3E57800000007000000AC12FFAD010115233F13F895080DAED87B0E9661040BF3E578000000071008ECF90AA6A27C10EDACFD0000000300000007000000070000000100000002000000070000000413F85908000000040DAED87B0E9661040BF3E5780000000A1008ECF90AA6A27C0000000A10ED70FD06E001000000000A0000000A0000000300000001000000020E962504000000020BF3E578000000071008ECF90AA6A27C0000000A00000007000000010000000000000003"
theorem small_8103661_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8103661_left_root small_8103661_left_fuel small_8103661_left_count small_8103661_left_encoded = true := by
  decide +kernel
theorem small_8103661_left_covered : CoveredBy scale carrier boxes small_8103661_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8103661_left_root small_8103661_left_fuel small_8103661_left_count small_8103661_left_encoded small_8103661_left_checked

theorem cover_8103661 : CoveredBy scale carrier boxes root_8103661 := by
  apply coveredBy_split_literal root_8103661 small_8103661_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.root_8104437 coord1 false (-9480640)
  · decide +kernel
  · decide +kernel
  · exact small_8103661_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.cover_8104437
#print axioms cover_8103661

def root_8103655 : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-1816224), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8103655_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16678144)⟩, ⟨(-1816224), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8103655_left_fuel : Nat := 1
def small_8103655_left_count : Nat := 1
def small_8103655_left_encoded : String := "00000004"
theorem small_8103655_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8103655_left_root small_8103655_left_fuel small_8103655_left_count small_8103655_left_encoded = true := by
  decide +kernel
theorem small_8103655_left_covered : CoveredBy scale carrier boxes small_8103655_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8103655_left_root small_8103655_left_fuel small_8103655_left_count small_8103655_left_encoded small_8103655_left_checked

theorem cover_8103655 : CoveredBy scale carrier boxes root_8103655 := by
  apply coveredBy_split_literal root_8103655 small_8103655_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.root_8103661 coord4 false (16678144)
  · decide +kernel
  · decide +kernel
  · exact small_8103655_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.cover_8103661
#print axioms cover_8103655

def root_8102703 : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8102703_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(15552512), (16244736)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (-1816224)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8102703_left_fuel : Nat := 23
def small_8102703_left_count : Nat := 447
def small_8102703_left_encoded : String := "13E201080B4D43F810804CF9000000010DE7CA040E5FD8FB0B4D43FC10804CFD000000030640010012FF710100000000033F67BF0000000813BBF508000000040BF3E578100928F900000001000000051008ECF90D4128840EFA10FB0BF3E57C000000051008ECFD000000060000000300000002000000080000000112FFAD01033F67BF13BC31080BF3E578100928F900000001000000071008ECF90D4128840EFA10FB0BF3E57C00000008000000060000000200000008000000010000000413BBF508000000040BF3E578100928F9000000010D4128840EFA10FB0BF3E57C100928FD000000030000000500000006000000020EFA4CFB000000020BF3E57C100928FD0000000300000007000000071008ECF90D4128840EFA10FB0BF3E57C100928FD0000000306E0010012C7E501000000000000000812C8210102B4D69F000000080000000A000000001008ECFD0000000600000003000000020EFA4CFB000000020BF3E57C100928FD00000003000000081008ECFD06E001000000000700000007000000030000000100000000108010FD0640010012FF710100000000033F67BF0000000613BBF508000000040BF3E578000000061008ECF9000000060000000112FFAD01033F67BF0000000613BBF508000000040BF3E578000000061008ECF90D412884000000060EFA4CFB0000000200000007000000010000000000000003000000020E6014FB000000020B4D43FC10804CFD00000003064001000000000812FFAD01033F67BF0000000713BBF508000000040DAED87B0E9661040BF3E578000000071008ECF90000000800000001000000020000000700000000108010FD06400100000000070000000700000003108010F90DE7CA040E5FD8FB0B4D43FC10804CFD000000030640010012FF710100000000033F67BF0000000813BBF508000000040AA6A27810EDACF9000000010D4128840EFA10FB0BF3E57C000000081008ECFD05A001000000000813317101000000080000000000000003000000020000000810ED70F9000000080000000112FFAD01033F67BF13BC31080AA6A27810EDACF9000000010D4128840EFA10FB0BF3E57C000000081008ECFD0000000600000003000000020000000810ED70F900000008000000010000000413BBF508000000040AA6A27810EDACF9000000010D4128840EFA10FB0BF3E57C100928FD0000000306E0010000000008000000091008ECFD06E0010012C7E5010000000002B4D69F00000006000000090000000900000003000000020EFA4CFB000000020BF3E57C100928FD00000003000000081008ECFD06E0010012C7E501000000000000000812C8210102B4D69F0000000713D0D108000000040AF9F3380000000900000009000000000000000310ED70F90D4128840EFA10FB00000009000000020EFA4CFB000000020BF3E57C000000081008ECFD06E001000000000800000009000000030000000100000000108010FD0640010012FF710100000000033F67BF13BC31080AA6A2780000000610ED70F90D4128840000000600000008000000010000000413BBF508000000040AA6A27810EDACF9000000010D412884000000060EFA4CFB000000020AA6A27C10EDACFD0000000305A00100000000081331710102B4D69F0000000613D0D108000000040AF9F3380000000600000008000000000000000610ED70F90D4128840EFA10FB00000006000000020EFA4CFB000000020AA6A27C10EDACFD000000030000000810ED70FD00000006000000030000000112FFAD01033F67BF13BC31080AA6A27810EDACF9000000010D412884000000060000000710ED70F90D4128840000000600000005000000010000000413BBF508000000040AA6A27810EDACF9000000010D412884000000060EFA4CFB000000020AA6A27C10EDACFD0000000306E001000000000712C8210100000007000000000000000610ED70F90D4128840EFA10FB00000009000000020EFA4CFB000000020AA6A27C10EDACFD0000000306E0010012C7E5010000000002B4D69F00000008000000090000000910ED70FD0000000500000003000000010000000000000003000000020E6014FB000000020B4D43FC10804CFD00000003064001000000000812FFAD01033F67BF0000000813BBF508000000040DAED87B0E9661040AA6A2780000000800000008000000020000000800000000108010FD0640010012FF710100000000033F67BF0000000713BBF508000000040DAED87B0E9661040AA6A27810EDACF9000000010000000710ED70F90000000800000001000000020E962504000000020000000712FFAD01033F67BF0000000713BBF508000000040DAED87B0E9661040AA6A27810EDACF9000000010000000710ED70F90AA6A27C10EDACFD0000000306E0010000000007000000050000000500000001000000020E962504000000020000000700000000000000030000000100000004"
theorem small_8102703_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8102703_left_root small_8102703_left_fuel small_8102703_left_count small_8102703_left_encoded = true := by
  decide +kernel
theorem small_8102703_left_covered : CoveredBy scale carrier boxes small_8102703_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8102703_left_root small_8102703_left_fuel small_8102703_left_count small_8102703_left_encoded small_8102703_left_checked

theorem cover_8102703 : CoveredBy scale carrier boxes root_8102703 := by
  apply coveredBy_split_literal root_8102703 small_8102703_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.root_8103655 coord4 true (-1816224)
  · decide +kernel
  · decide +kernel
  · exact small_8102703_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.cover_8103655
#print axioms cover_8102703

def root_8102697 : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8102697_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (6291456)⟩, ⟨(14529024), (15552512)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8102697_left_fuel : Nat := 1
def small_8102697_left_count : Nat := 1
def small_8102697_left_encoded : String := "00000000"
theorem small_8102697_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8102697_left_root small_8102697_left_fuel small_8102697_left_count small_8102697_left_encoded = true := by
  decide +kernel
theorem small_8102697_left_covered : CoveredBy scale carrier boxes small_8102697_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8102697_left_root small_8102697_left_fuel small_8102697_left_count small_8102697_left_encoded small_8102697_left_checked

theorem cover_8102697 : CoveredBy scale carrier boxes root_8102697 := by
  apply coveredBy_split_literal root_8102697 small_8102697_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.root_8102703 coord0 true (15552512)
  · decide +kernel
  · decide +kernel
  · exact small_8102697_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.cover_8102703
#print axioms cover_8102697

def root_8102696 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8102696 : CoveredBy scale carrier boxes root_8102696 := by
  apply coveredBy_split_literal root_8102696 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.root_8102697 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3043.root coord0 false (6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.cover_8102697
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3043.covered
#print axioms cover_8102696

def root_8102691 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8102691_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-13026304), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8102691_right_fuel : Nat := 1
def small_8102691_right_count : Nat := 1
def small_8102691_right_encoded : String := "00000003"
theorem small_8102691_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8102691_right_root small_8102691_right_fuel small_8102691_right_count small_8102691_right_encoded = true := by
  decide +kernel
theorem small_8102691_right_covered : CoveredBy scale carrier boxes small_8102691_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8102691_right_root small_8102691_right_fuel small_8102691_right_count small_8102691_right_encoded small_8102691_right_checked

theorem cover_8102691 : CoveredBy scale carrier boxes root_8102691 := by
  apply coveredBy_split_literal root_8102691 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.root_8102696 small_8102691_right_root coord3 true (-13026304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.cover_8102696
  · exact small_8102691_right_covered
#print axioms cover_8102691

def root_8102029 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8102029_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(-12756736), (-10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8102029_left_fuel : Nat := 23
def small_8102029_left_count : Nat := 313
def small_8102029_left_encoded : String := "0F878CFD0000000307800100128A410100000000022A457F13E201080B4D43F810804CF9000000010DE7CA040E5FD8FB0DE7C9FC000000080E5FD8FD064001000000000812FFAD01033F67BF0000000813BBF508000000040BF3E578000000051008ECF9000000080000000100000000000000030000000200000008108010F900000008000000010000000413E1C508000000040B4D43F810804CF9000000010DE7CA04000000050E6014FB000000020DE7C9FC000000050E5FD8FD064001000000000512FFAD010115233F00000008000000050000000000000003108010F90DE7CA040E5FD8FB0DE7C9FC0E6014FD00000003000000050E5FD8FD0640010012FF7101000000000115233F000000080000000512FFAD010115233F13F895080AA6A27810EDACF9000000010D4128840EFA10FB0D41287C000000050EFA10FD06E00100000000050000000900000003000000020000000810ED70F90D4128840EFA10FB000000090000000200000008000000010000000413F85908000000040AA6A2780000000A10ED70F90D4128840EFA10FB00000009000000020000000A000000010000000000000003000000020E6014FB000000020DE7C9FC000000080E5FD8FD064001000000000812FFAD010115233F0000000800000006000000000000000300000001128A7D01022A457F13E201080B4D43F810804CF9000000010DE7CA040E5FD8FB0DE7C9FC0E6014FD0000000308C0010011FBE90100000000000000080000000A0E5FD8FD08C0010011FBE90100000000033F67BF13BC31080BF3E578000000081008ECF900000008000000010000000413BBF508000000040BF3E5780000000A1008ECF90D4128840EFA10FB0000000A000000020000000A0000000111FC2501033F67BF13BC31080BF3E5780000000A1008ECF90000000A00000001000000040000000A0000000000000003000000020E6014FB000000020DE7C9FC0E6014FD00000003000000080E5FD8FD08C0010011FBE901000000000000000811FC2501033F67BF13BC310800000007000000040000000A0000000000000003108010F90DE7CA040E5FD8FB0DE7C9FC0E6014FD0000000308C001000000000811FC2501033F67BF0000000800000009000000000E5FD8FD08C0010011FBE90100000000033F67BF13BC31080AA6A27800000008000000080000000413BBF508000000040AA6A27810EDACF9000000010D412884000000090EFA4CFB000000020D41287C000000080000000910ED70F9000000090000000111FC2501033F67BF00000009000000090000000000000003000000020E6014FB000000020DE7C9FC0E6014FD00000003000000080E5FD8FD08C0010011FBE901000000000000000811FC2501033F67BF000000080000000A0000000000000003000000010000000413E1C508000000040B4D43F810804CF9000000010DE7CA040E5FD8FB0DE7C9FC0000000A0E5FD8FD0000000A00000003000000020000000A108010F90DE7CA040E5FD8FB0DE7C9FC0000000A0E5FD8FD08C0010011FBE901000000000115233F13F895080AA6A2780000000A10ED70F90000000900000001000000040000000A0000000A00000003000000020E6014FB000000020DE7C9FC0000000A0E5FD8FD08C0010011FBE901000000000115233F13F895080DAED87B0000000A0E962504000000020000000600000004000000060000000A000000030000000100000000"
theorem small_8102029_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8102029_left_root small_8102029_left_fuel small_8102029_left_count small_8102029_left_encoded = true := by
  decide +kernel
theorem small_8102029_left_covered : CoveredBy scale carrier boxes small_8102029_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8102029_left_root small_8102029_left_fuel small_8102029_left_count small_8102029_left_encoded small_8102029_left_checked

theorem cover_8102029 : CoveredBy scale carrier boxes root_8102029 := by
  apply coveredBy_split_literal root_8102029 small_8102029_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.root_8102691 coord3 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_8102029_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.cover_8102691
#print axioms cover_8102029

def root_8102023 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8102023_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-13027072)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8102023_left_fuel : Nat := 1
def small_8102023_left_count : Nat := 1
def small_8102023_left_encoded : String := "00000002"
theorem small_8102023_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8102023_left_root small_8102023_left_fuel small_8102023_left_count small_8102023_left_encoded = true := by
  decide +kernel
theorem small_8102023_left_covered : CoveredBy scale carrier boxes small_8102023_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8102023_left_root small_8102023_left_fuel small_8102023_left_count small_8102023_left_encoded small_8102023_left_checked

theorem cover_8102023 : CoveredBy scale carrier boxes root_8102023 := by
  apply coveredBy_split_literal root_8102023 small_8102023_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.root_8102029 coord2 true (-13027072)
  · decide +kernel
  · decide +kernel
  · exact small_8102023_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.cover_8102029
#print axioms cover_8102023

def root_8100407 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-13026304)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8100407 : CoveredBy scale carrier boxes root_8100407 := by
  apply coveredBy_split_literal root_8100407 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3041.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.root_8102023 coord2 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3041.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.cover_8102023
#print axioms cover_8100407

def root_8100402 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8100402_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(-13026304), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8100402_right_fuel : Nat := 1
def small_8100402_right_count : Nat := 1
def small_8100402_right_encoded : String := "00000001"
theorem small_8100402_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8100402_right_root small_8100402_right_fuel small_8100402_right_count small_8100402_right_encoded = true := by
  decide +kernel
theorem small_8100402_right_covered : CoveredBy scale carrier boxes small_8100402_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8100402_right_root small_8100402_right_fuel small_8100402_right_count small_8100402_right_encoded small_8100402_right_checked

theorem cover_8100402 : CoveredBy scale carrier boxes root_8100402 := by
  apply coveredBy_split_literal root_8100402 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.root_8100407 small_8100402_right_root coord1 true (-13026304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.cover_8100407
  · exact small_8100402_right_covered
#print axioms cover_8100402

def root_8099376 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8099376_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8099376_left_fuel : Nat := 24
def small_8099376_left_count : Nat := 485
def small_8099376_left_encoded : String := "0F878CF9000000010C9A87040F8750FB0C9A86FC0F878CFD0000000307800100128A41010000000000000005128A7D01022A457F13E201080DE7C9F80E6014F9000000010B4D44040000000510804CFB000000020DE7C9FC000000050E5FD8FD08C00100000000050000000A000000030E5FD8F90B4D4404108010FB0DE7C9FC0E6014FD00000003000000050E5FD8FD08C0010011FBE90100000000033F67BF000000060000000511FC25010000000A00000000000000030000000210804CFB000000020DE7C9FC0E6014FD0000000308C00100000000050000000A0E5FD8FD08C0010011FBE90100000000033F67BF13BC31080D412878000000050EFA10F90BF3E584000000050000000A0000000100000004000000050000000A00000003000000010000000413E1C508000000040DE7C9F80000000A0E5FD8F90B4D4404108010FB0000000A000000020000000A00000001000000000F8750FD07800100128A410100000000022A457F13E201080DE7C9F8000000060E5FD8F90B4D44040000000610804CFB000000020B4D43FC0000000600000006000000010000000413E1C508000000040DE7C9F80E6014F900000001000000050E5FD8F90B4D44040000000610804CFB000000020B4D43FC000000050000000600000001128A7D01022A457F13E201080DE7C9F80E6014F9000000010B4D44040000000610804CFB000000020B4D43FC00000006000000060E5FD8F90B4D44040000000610804CFB000000020B4D43FC10804CFD0000000308C0010011FBE90100000000033F67BF0000000613BBF508000000040000000611FC2501033F67BF000000060000000A0000000000000006000000010000000413E1C508000000040DE7C9F80E6014F9000000010B4D4404108010FB000000060000000210804CFB000000020B4D43FC0000000A108010FD00000006000000030E5FD8F90B4D4404108010FB0B4D43FC10804CFD000000030000000A000000060000000210804CFB000000020B4D43FC0000000A108010FD0000000800000003000000010000000000000003000000020F878CFB000000020C9A86FC0F878CFD0000000307800100128A410100000000022A457F13E201080DE7C9F8000000050E5FD8F90DE7CA040000000500000008000000010000000400000005128A7D01022A457F13E201080DE7C9F80E6014F9000000010DE7CA040E5FD8FB0DE7C9FC000000050E5FD8FD08C00100000000050000000700000003000000020E6014FB000000020DE7C9FC00000005000000070E5FD8F90DE7CA040E5FD8FB0DE7C9FC0E6014FD0000000308C00100000000050000000A0E5FD8FD08C0010011FBE90100000000033F67BF13BC310800000007000000040000000A0000000A00000003000000020E6014FB000000020DE7C9FC0E6014FD00000003000000080E5FD8FD08C00100000000070000000A00000003000000010000000413E1C508000000040DE7C9F80000000A0E5FD8F90DE7CA040E5FD8FB0000000A000000020000000A00000001000000000F8750FD07800100128A410100000000022A457F13E201080DE7C9F80E6014F9000000010DE7CA040E5FD8FB0000000700000002000000070E5FD8F90DE7CA040E5FD8FB0B4D43FC10804CFD000000030640010012FF7101000000000000000512FFAD01033F67BF0000000713BBF508000000040D412878000000050EFA10F90D41288400000005000000070000000100000000108010FD0000000600000003000000020E6014FB000000020B4D43FC10804CFD000000030000000700000007000000010000000413E1C508000000040DE7C9F80E6014F9000000010DE7CA04000000050E6014FB00000002000000050E5FD8F90DE7CA040E5FD8FB0B4D43FC10804CFD0000000300000005108010FD0640010012FF7101000000000115233F000000060000000512FFAD010115233F13F895080D412878000000060EFA10F900000006000000010000000413F85908000000040D4128780000000A0EFA10F90D412884000000060000000A000000010000000000000003000000020E6014FB000000020B4D43FC10804CFD00000003064001000000000512FFAD010115233F000000070000000500000000108010FD064001000000000712FFAD0100000007000000000000000300000001128A7D01022A457F13E201080DE7C9F80E6014F9000000010DE7CA040E5FD8FB0000000700000002000000070E5FD8F90DE7CA040E5FD8FB0B4D43FC10804CFD0000000308C0010011FBE90100000000033F67BF0000000713BBF508000000040D412878000000070EFA10F90D4128840EFA10FB0000000700000002000000070000000111FC25010000000700000000108010FD0000000700000003000000020E6014FB0000000200000007000000010000000413E1C508000000040DE7C9F80E6014F9000000010DE7CA040E5FD8FB0B4D43FC0000000A108010FD0000000A00000003000000020000000A0E5FD8F90DE7CA040E5FD8FB0B4D43FC0000000A108010FD08C0010011FBE901000000000115233F13F895080D412878000000060EFA10F90000000A00000001000000040000000A0000000A00000003000000020E6014FB000000020B4D43FC0000000A108010FD08C00100000000070000000700000003000000010000000000000003"
theorem small_8099376_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8099376_left_root small_8099376_left_fuel small_8099376_left_count small_8099376_left_encoded = true := by
  decide +kernel
theorem small_8099376_left_covered : CoveredBy scale carrier boxes small_8099376_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8099376_left_root small_8099376_left_fuel small_8099376_left_count small_8099376_left_encoded small_8099376_left_checked

theorem cover_8099376 : CoveredBy scale carrier boxes root_8099376 := by
  apply coveredBy_split_literal root_8099376 small_8099376_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.root_8100402 coord1 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_8099376_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.cover_8100402
#print axioms cover_8099376

def root_8099370 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8099370_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8099370_left_fuel : Nat := 1
def small_8099370_left_count : Nat := 1
def small_8099370_left_encoded : String := "00000004"
theorem small_8099370_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8099370_left_root small_8099370_left_fuel small_8099370_left_count small_8099370_left_encoded = true := by
  decide +kernel
theorem small_8099370_left_covered : CoveredBy scale carrier boxes small_8099370_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8099370_left_root small_8099370_left_fuel small_8099370_left_count small_8099370_left_encoded small_8099370_left_checked

theorem cover_8099370 : CoveredBy scale carrier boxes root_8099370 := by
  apply coveredBy_split_literal root_8099370 small_8099370_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.root_8099376 coord4 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_8099370_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.cover_8099376
#print axioms cover_8099370

def root_8097964 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8097964 : CoveredBy scale carrier boxes root_8097964 := by
  apply coveredBy_split_literal root_8097964 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3040.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.root_8099370 coord4 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3040.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.cover_8099370
#print axioms cover_8097964

def root_8097958 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8097958_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8097958_left_fuel : Nat := 1
def small_8097958_left_count : Nat := 1
def small_8097958_left_encoded : String := "00000003"
theorem small_8097958_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8097958_left_root small_8097958_left_fuel small_8097958_left_count small_8097958_left_encoded = true := by
  decide +kernel
theorem small_8097958_left_covered : CoveredBy scale carrier boxes small_8097958_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8097958_left_root small_8097958_left_fuel small_8097958_left_count small_8097958_left_encoded small_8097958_left_checked

theorem cover_8097958 : CoveredBy scale carrier boxes root_8097958 := by
  apply coveredBy_split_literal root_8097958 small_8097958_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.root_8097964 coord3 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_8097958_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.cover_8097964
#print axioms cover_8097958

def root_8097957 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8097957_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8097957_right_fuel : Nat := 19
def small_8097957_right_count : Nat := 127
def small_8097957_right_encoded : String := "0F34D0FC045489FF1386AD080C9A86F80F878CF9000000010C9A87040F8750FB0780010000000005128A7D010AD3577D10D13CFC00000003067ECE7F0000000812EA5908000000040DE7C9F8000000050E5FD8F90000000800000001000000080000000000000002000000080F8750F90C9A87040F8750FB0780010000000008128A7D010AD3577D10D13CFC00000003067ECE7F0000000812EA5908000000040B4D43F800000008108010F9000000080000000100000008000000000000000200000008000000010000000413867108000000040C9A86F80F878CF9000000010C9A8704000000050F878CFB00000002000000050F8750F90C9A87040F8750FB07800100128A41010000000000000005128A7D010AD3577D10D13CFC00000003022A457F13E201080B4D43F810804CF9000000010B4D44040000000510804CFB0000000200000005108010F90B4D44040000000910804CFB0000000208C001000000000800000009000000010000000413E1C508000000040B4D43F800000005108010F90B4D4404000000050000000A0000000110D100FC000000050000000300000000000000020F878CFB0000000207800100128A41010000000000000008128A7D010AD3577D10D13CFC00000003022A457F0000000813E1C508000000040B4D43F80000000A0000000600000008000000000000000100000003"
theorem small_8097957_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8097957_right_root small_8097957_right_fuel small_8097957_right_count small_8097957_right_encoded = true := by
  decide +kernel
theorem small_8097957_right_covered : CoveredBy scale carrier boxes small_8097957_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8097957_right_root small_8097957_right_fuel small_8097957_right_count small_8097957_right_encoded small_8097957_right_checked

theorem cover_8097957 : CoveredBy scale carrier boxes root_8097957 := by
  apply coveredBy_split_literal root_8097957 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.root_8097958 small_8097957_right_root coord3 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.cover_8097958
  · exact small_8097957_right_covered
#print axioms cover_8097957

def root_8097952 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8097952_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8097952_right_fuel : Nat := 1
def small_8097952_right_count : Nat := 1
def small_8097952_right_encoded : String := "00000002"
theorem small_8097952_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8097952_right_root small_8097952_right_fuel small_8097952_right_count small_8097952_right_encoded = true := by
  decide +kernel
theorem small_8097952_right_covered : CoveredBy scale carrier boxes small_8097952_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8097952_right_root small_8097952_right_fuel small_8097952_right_count small_8097952_right_encoded small_8097952_right_checked

theorem cover_8097952 : CoveredBy scale carrier boxes root_8097952 := by
  apply coveredBy_split_literal root_8097952 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.root_8097957 small_8097952_right_root coord2 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.cover_8097957
  · exact small_8097952_right_covered
#print axioms cover_8097952

def root_8097951 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8097951_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8097951_right_fuel : Nat := 33
def small_8097951_right_count : Nat := 491
def small_8097951_right_encoded : String := "0F34D104000000020CFD9BFD0F350CFC00000003045489FF1386AD080C9A86F80F878CF9000000010C9A86FC0F878CFD00000003000000080F8750FD00000007000000030F8750F90C9A86FC0F878CFD00000003000000080F8750FD07800100128A41010000000000000008128A7D010AD3577B00000007000000070000000000000003000000010000000413867108000000040C9A86F80F878CF9000000010C9A86FC0F878CFD0000000307800100128A4101000000000AD3577B10D13D04022A457F00000008000000050000000200000005128A7D010AD3577B10D13D04022A457F13E201080DE7C9F80E6014F900000001000000070E5FD8F90DE7C9FC0000000800000007000000010000000413E1C508000000040DE7C9F80000000A0E5FD8F90000000A000000010000000210D1010400000002022A457F0000000713E1C508000000040DE7C9F80000000A0E5FD8F90000000A00000001000000000F8750FD07800100128A4101000000000AD3577B10D13D04022A457F0000000713E1C508000000040DE7C9F8000000070E5FD8F90B4D43FC10804CFD0000000306400100000000050000000700000007000000010000000210D101040000000200000007128A7D010AD3577B10D13D04022A457F0000000713E1C508000000040DE7C9F8000000070E5FD8F90B4D43FC0000000A00000007000000010000000210D10104000000020000000700000000000000030F8750F90C9A86FC0F878CFD0000000307800100128A4101000000000AD3577B10D13D04022A457F0000000813E1C508000000040B4D43F800000008000000060000000200000008128A7D010AD3577B10D13D04022A457F13E201080B4D43F800000008108010F900000008000000010000000413E1C508000000040B4D43F810804CF9000000010DE7C9FC000000060E5FD8FD0000000A00000003108010F900000006000000010000000210D1010400000002022A457F0000000800000006000000000F8750FD07800100128A4101000000000AD3577B10D13D04022A457F13E201080B4D43F810804CF9000000010B4D43FC0000000800000007108010F90B4D43FC00000008108010FD06400100000000070000000700000003000000010000000413E1C508000000040B4D43F810804CF9000000010B4D43FC10804CFD000000030640010012FF7101000000000000000812FFAD010BE879BB1011AD040115233F000000070000000A0000000210117104000000020000000700000000108010FD0640010012FF7101000000000BE879BB000000070000000712FFAD01000000070000000000000003108010F90B4D43FC10804CFD00000003064001000000000812FFAD010BE879BB1011AD040115233F00000008000000060000000210117104000000020000000600000000108010FD0640010012FF7101000000000BE879BB1011AD040115233F0000000813F85908000000040AA6A27810EDACF9000000010AA6A27C10EDACFD00000003000000080000000710ED70F90AA6A27C10EDACFD000000030000000610ED70FD05A00100133135010000000000000008133171010C730ADB00000007000000070000000000000003000000010000000210117104000000020000000812FFAD010BE879BB1011AD040115233F13F895080AA6A2780000000710ED70F90AA6A27C10EDACFD000000030000000700000007000000010000000413F85908000000040AA6A27810EDACF9000000010AA6A27C0000000A0000000710ED70F90AA6A27C0000000610ED70FD06E001000000000712C8210100000007000000000000000300000001000000021011710400000002000000070000000000000003000000010000000210D1010400000002022A457F0000000713E1C508000000040B4D43F810804CF9000000010B4D43FC0000000800000007108010F90B4D43FC00000006108010FD0640010000000007000000070000000300000001128A7D010AD3577B10D13D04022A457F13E201080B4D43F810804CF9000000010B4D43FC10804CFD000000030000000700000007108010F90B4D43FC10804CFD0000000308C0010011FBE901000000000000000811FC25010BE879BB000000070000000700000000108010FD08C00100000000070000000500000003000000010000000413E1C508000000040B4D43F810804CF9000000010B4D43FC10804CFD0000000308C0010011FBE901000000000BE879BB0000000A1011710400000002000000070000000A108010FD08C00100000000070000000A00000003108010F90B4D43FC10804CFD0000000308C0010011FBE901000000000BE879BB1011AD040115233F13F895080AA6A2780000000A000000060000000400000006000000021011710400000002000000060000000A108010FD08C0010011FBE901000000000BE879BB1011AD040115233F000000070000000A0000000210117104000000020000000711FC25010BE879BB000000051011710400000002000000050000000000000003000000010000000210D1010400000002022A457F0000000713E1C508000000040B4D43F810804CF9000000010B4D43FC0000000A00000007108010F90B4D43FC00000006108010FD0000000700000003000000010000000000000003000000010F34D0FC045489FF0000000813867108000000040C9A86F8000000080F8750F9000000080000000100000003"
theorem small_8097951_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8097951_right_root small_8097951_right_fuel small_8097951_right_count small_8097951_right_encoded = true := by
  decide +kernel
theorem small_8097951_right_covered : CoveredBy scale carrier boxes small_8097951_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8097951_right_root small_8097951_right_fuel small_8097951_right_count small_8097951_right_encoded small_8097951_right_checked

theorem cover_8097951 : CoveredBy scale carrier boxes root_8097951 := by
  apply coveredBy_split_literal root_8097951 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.root_8097952 small_8097951_right_root coord2 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.cover_8097952
  · exact small_8097951_right_covered
#print axioms cover_8097951

def root_8097945 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8097945_left_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8097945_left_fuel : Nat := 1
def small_8097945_left_count : Nat := 1
def small_8097945_left_encoded : String := "00000001"
theorem small_8097945_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8097945_left_root small_8097945_left_fuel small_8097945_left_count small_8097945_left_encoded = true := by
  decide +kernel
theorem small_8097945_left_covered : CoveredBy scale carrier boxes small_8097945_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8097945_left_root small_8097945_left_fuel small_8097945_left_count small_8097945_left_encoded small_8097945_left_checked

theorem cover_8097945 : CoveredBy scale carrier boxes root_8097945 := by
  apply coveredBy_split_literal root_8097945 small_8097945_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.root_8097951 coord1 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_8097945_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.cover_8097951
#print axioms cover_8097945

def root_8097944 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8097944_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-10897344), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8097944_right_fuel : Nat := 20
def small_8097944_right_count : Nat := 145
def small_8097944_right_encoded : String := "0F34D0F80CFD9BFB0F350D040CFD9BFD0F350CFC00000003045489FF1386AD080C9A87040F8750FB0C9A86FC0F878CFD000000030780010000000005128A7D010AD3577910D13CF800000001067ECE7F0000000712EA5908000000040B4D4404000000050000000700000007000000000F8750FD07800100000000070000000700000003000000020F878CFB000000020C9A86FC0F878CFD00000003078001000000000700000007000000070000000413867108000000040C9A87040F8750FB0C9A86FC0F878CFD00000003000000050F8750FD07800100128A41010000000000000005128A7D010AD3577910D13CF800000001022A457F0000000613E1C508000000040B4D4404000000050000000A10D100F800000005000000010000000000000003000000020F878CFB000000020C9A86FC0F878CFD00000003000000050F8750FD07800100128A4101000000000AD3577910D13CF800000001022A457F000000070000000500000005128A7D010AD3577910D13CF800000001022A457F0000000713E1C508000000040DE7CA040E5FD8FB0000000700000002000000070000000700000000000000030F34D0FC045489FF1386AD0800000005000000040000000500000003000000020F34D104000000020CFD9BFD0F350CFC00000003045489FF0000000713867108000000040C9A86FC0F878CFD000000030780010000000005128A7D010AD3577910D13CF8000000010AD3577B000000070000000500000005000000000F8750FD00000007000000030F34D0FC000000050000000300000001"
theorem small_8097944_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8097944_right_root small_8097944_right_fuel small_8097944_right_count small_8097944_right_encoded = true := by
  decide +kernel
theorem small_8097944_right_covered : CoveredBy scale carrier boxes small_8097944_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8097944_right_root small_8097944_right_fuel small_8097944_right_count small_8097944_right_encoded small_8097944_right_checked

theorem cover_8097944 : CoveredBy scale carrier boxes root_8097944 := by
  apply coveredBy_split_literal root_8097944 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.root_8097945 small_8097944_right_root coord1 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.cover_8097945
  · exact small_8097944_right_covered
#print axioms cover_8097944

def root_8097939 : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8097939_right_root : ZRayBox := fun j => (#[⟨⟨(4194304), (8388608)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8097939_right_fuel : Nat := 1
def small_8097939_right_count : Nat := 1
def small_8097939_right_encoded : String := "00000000"
theorem small_8097939_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8097939_right_root small_8097939_right_fuel small_8097939_right_count small_8097939_right_encoded = true := by
  decide +kernel
theorem small_8097939_right_covered : CoveredBy scale carrier boxes small_8097939_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8097939_right_root small_8097939_right_fuel small_8097939_right_count small_8097939_right_encoded small_8097939_right_checked

theorem cover_8097939 : CoveredBy scale carrier boxes root_8097939 := by
  apply coveredBy_split_literal root_8097939 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.root_8097944 small_8097939_right_root coord0 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.cover_8097944
  · exact small_8097939_right_covered
#print axioms cover_8097939

def root_8096331 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8096331 : CoveredBy scale carrier boxes root_8096331 := by
  apply coveredBy_split_literal root_8096331 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3039.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.root_8097939 coord0 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3039.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.cover_8097939
#print axioms cover_8096331

def root_8096325 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8096325_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8096325_left_fuel : Nat := 1
def small_8096325_left_count : Nat := 1
def small_8096325_left_encoded : String := "00000004"
theorem small_8096325_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8096325_left_root small_8096325_left_fuel small_8096325_left_count small_8096325_left_encoded = true := by
  decide +kernel
theorem small_8096325_left_covered : CoveredBy scale carrier boxes small_8096325_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8096325_left_root small_8096325_left_fuel small_8096325_left_count small_8096325_left_encoded small_8096325_left_checked

theorem cover_8096325 : CoveredBy scale carrier boxes root_8096325 := by
  apply coveredBy_split_literal root_8096325 small_8096325_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.root_8096331 coord4 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_8096325_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.cover_8096331
#print axioms cover_8096325

def root_8096021 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8096021_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8096021_left_fuel : Nat := 25
def small_8096021_left_count : Nat := 143
def small_8096021_left_encoded : String := "12073D0805000100135D4501000000000CFD9BF9000000080F34D0F80CFD9BFB0F350D040CFD9BFD0F350CFC000000030CFD9BFF000000070F34D108000000040C9A87040F8750FB0C9A86FC0000000800000007000000020000000700000008000000020F34D104000000020000000800000001135D81010CFD9BF90F350CF8000000010CFD9BFB0F350D040CFD9BFD0F350CFC000000030CFD9BFF0F350D0800000008000000040F34D108000000040C9A86F80F878CF9000000010C9A87040F8750FB0C9A86FC0F878CFD000000030780010000000008128A7D010AD3577F0000000710D10108000000040DE7C9F8000000070E5FD8F90000000800000001000000000F8750FD07800100000000070000000700000003000000020F878CFB000000020C9A86FC00000008000000070F8750F90C9A87040F8750FB0C9A86FC0F878CFD00000003000000080F8750FD07800100128A41010000000000000008128A7D010AD3577F0000000710D10108000000040B4D43F800000006108010F90B4D440400000006000000050000000100000000000000030000000200000008000000010F34D0FC0000000800000003000000020F34D10400000002000000080F34D0F80CFD9BFB0F350D040CFD9BFD0F350CFC000000030CFD9BFF000000070F34D108000000040C9A87040F8750FB0C9A86FC0F878CFD00000003000000070000000700000002000000070F34D0FC0000000800000003000000020F34D104000000020CFD9BFD0000000700000007000000010000000000000004"
theorem small_8096021_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8096021_left_root small_8096021_left_fuel small_8096021_left_count small_8096021_left_encoded = true := by
  decide +kernel
theorem small_8096021_left_covered : CoveredBy scale carrier boxes small_8096021_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8096021_left_root small_8096021_left_fuel small_8096021_left_count small_8096021_left_encoded small_8096021_left_checked

theorem cover_8096021 : CoveredBy scale carrier boxes root_8096021 := by
  apply coveredBy_split_literal root_8096021 small_8096021_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.root_8096325 coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_8096021_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.cover_8096325
#print axioms cover_8096021

def root_8096015 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8096015_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8096015_left_fuel : Nat := 1
def small_8096015_left_count : Nat := 1
def small_8096015_left_encoded : String := "00000003"
theorem small_8096015_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8096015_left_root small_8096015_left_fuel small_8096015_left_count small_8096015_left_encoded = true := by
  decide +kernel
theorem small_8096015_left_covered : CoveredBy scale carrier boxes small_8096015_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8096015_left_root small_8096015_left_fuel small_8096015_left_count small_8096015_left_encoded small_8096015_left_checked

theorem cover_8096015 : CoveredBy scale carrier boxes root_8096015 := by
  apply coveredBy_split_literal root_8096015 small_8096015_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.root_8096021 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_8096015_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.cover_8096021
#print axioms cover_8096015

def root_8096014 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8096014_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8096014_right_fuel : Nat := 13
def small_8096014_right_count : Nat := 31
def small_8096014_right_encoded : String := "120700FC08A912FF00000008120701080000000405000100135D45010000000000000005135D81010CFD9BF90F350CF8000000010CFD9BFB0F350D04045489FD1386ACFC00000003045489FF000000080000000500000005000000020F34D10400000002000000080F34D0F800000005000000010000000000000003"
theorem small_8096014_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8096014_right_root small_8096014_right_fuel small_8096014_right_count small_8096014_right_encoded = true := by
  decide +kernel
theorem small_8096014_right_covered : CoveredBy scale carrier boxes small_8096014_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8096014_right_root small_8096014_right_fuel small_8096014_right_count small_8096014_right_encoded small_8096014_right_checked

theorem cover_8096014 : CoveredBy scale carrier boxes root_8096014 := by
  apply coveredBy_split_literal root_8096014 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.root_8096015 small_8096014_right_root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.cover_8096015
  · exact small_8096014_right_covered
#print axioms cover_8096014

def root_8096009 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8096009_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8096009_right_fuel : Nat := 1
def small_8096009_right_count : Nat := 1
def small_8096009_right_encoded : String := "00000002"
theorem small_8096009_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8096009_right_root small_8096009_right_fuel small_8096009_right_count small_8096009_right_encoded = true := by
  decide +kernel
theorem small_8096009_right_covered : CoveredBy scale carrier boxes small_8096009_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8096009_right_root small_8096009_right_fuel small_8096009_right_count small_8096009_right_encoded small_8096009_right_checked

theorem cover_8096009 : CoveredBy scale carrier boxes root_8096009 := by
  apply coveredBy_split_literal root_8096009 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.root_8096014 small_8096009_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195.cover_8096014
  · exact small_8096009_right_covered
#print axioms cover_8096009

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0195
