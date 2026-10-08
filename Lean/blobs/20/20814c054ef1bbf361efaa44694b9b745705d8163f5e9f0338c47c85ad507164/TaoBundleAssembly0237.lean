import TaoBundleAssembly0234
import TaoBundleAssembly0236
import TaoBundleChunkBatch0941
import TaoBundleChunkBatch0942
import TaoBundleChunkBatch0943
import TaoBundleChunkBatch0944
import TaoBundleChunkBatch0945
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237
def root_10031045 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10031045_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10031045_right_fuel : Nat := 23
def small_10031045_right_count : Nat := 235
def small_10031045_right_encoded : String := "12073D06050000FA135D80FB00000002050000FE135D80FF000000040CFD9C010F34D100000000000CFD9C030F34D10200000001000000090F350D020CFD9C070F34D106000000030C9A8702000000070F878D03000000070000000100000007000000010F350D000CFD9C030F34D102000000010CFD9C070F34D106000000030C9A8700000000060F878D010000000600000000000000060F350D020CFD9C070F34D106000000030C9A87000F875101000000000C9A87020F87510300000001078000FA128A7CFB00000002078000FE128A7CFF000000040AD3578710D10106000000030B4D440000000005000000070000000600000007128A40FB078000FE00000006128A40FF0AD3578710D1010600000003000000060000000600000004000000020F878D03078000FA128A7CFB00000002078000FE00000006128A40FF000000070000000400000006000000010F878D010C9A87020F87510300000001078000FA00000007128A40FB078000FE128A7CFF000000040000000600000007000000020F878D03078000FA128A7CFB00000002000000070000000600000001000000000F350D060C9A87000F875101000000000C9A87020F875103000000010C9A87060000000600000006000000060F878D010000000700000000000000030000000100000000135D44FF0CFD9C010F34D10000000000000000070F350D000CFD9C030F34D102000000010CFD9C070F34D106000000030C9A87000F875101000000000000000700000007000000070F350D020CFD9C070F34D106000000030C9A87000F875101000000000C9A8702000000070F878D0300000007000000010000000700000007000000010000000000000004135D44FB050000FE135D80FF000000040CFD9C010F34D100000000000CFD9C030F34D10200000001000000060F350D020CFD9C070F34D106000000030C9A87020F87510300000001000000060000000600000006000000010F350D000CFD9C030F34D10200000001000000060F350D020CFD9C070F34D106000000030C9A8700000000060F878D010000000600000000000000060000000100000000135D44FF0CFD9C010F34D100000000000CFD9C03000000070F350D0200000007000000010F350D000CFD9C030F34D10200000001000000060F350D020CFD9C070F34D106000000030C9A87000F875101000000000C9A87020F87510300000001028000FA0000000700000006000000060F878D0100000007000000000F350D0600000006000000030000000100000000000000040000000200000003"
theorem small_10031045_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10031045_right_root small_10031045_right_fuel small_10031045_right_count small_10031045_right_encoded = true := by
  decide +kernel
theorem small_10031045_right_covered : CoveredBy scale carrier boxes small_10031045_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10031045_right_root small_10031045_right_fuel small_10031045_right_count small_10031045_right_encoded small_10031045_right_checked

theorem cover_10031045 : CoveredBy scale carrier boxes root_10031045 := by
  apply coveredBy_split_literal root_10031045 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.root_10031046 small_10031045_right_root coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.cover_10031046
  · exact small_10031045_right_covered
#print axioms cover_10031045

def root_10031040 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10031040_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10031040_right_fuel : Nat := 1
def small_10031040_right_count : Nat := 1
def small_10031040_right_encoded : String := "00000001"
theorem small_10031040_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10031040_right_root small_10031040_right_fuel small_10031040_right_count small_10031040_right_encoded = true := by
  decide +kernel
theorem small_10031040_right_covered : CoveredBy scale carrier boxes small_10031040_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10031040_right_root small_10031040_right_fuel small_10031040_right_count small_10031040_right_encoded small_10031040_right_checked

theorem cover_10031040 : CoveredBy scale carrier boxes root_10031040 := by
  apply coveredBy_split_literal root_10031040 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.root_10031045 small_10031040_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.cover_10031045
  · exact small_10031040_right_covered
#print axioms cover_10031040

def root_10030842 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10030842_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10030842_left_fuel : Nat := 21
def small_10030842_left_count : Nat := 93
def small_10030842_left_encoded : String := "120701020000000108A913071207010600000003050000FA135D80FB00000002050000FE135D80FF000000040CFD9C010F34D10000000000000000050F350D0004548A03138671020000000104548A07138671060000000300000005000000061386AD0204548A0713867106000000030C9A87000F87510100000000078000FA128A7CFB00000002078000FE128A7CFF00000004067ECE8300000006000000060000000500000005000000051386AD060C9A8700000000060F878D010000000600000000000000030000000100000000000000050000000512073D06050000FA135D80FB00000002050000FE135D80FF000000040CFD9C01000000060F350D0004548A03000000060000000600000000135D44FF0CFD9C010F34D10000000000000000070F350D0004548A031386710200000001000000061386AD020CFD9C070F34D106000000030000000600000006000000010000000000000004135D44FB050000FE00000006000000060000000200000003"
theorem small_10030842_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10030842_left_root small_10030842_left_fuel small_10030842_left_count small_10030842_left_encoded = true := by
  decide +kernel
theorem small_10030842_left_covered : CoveredBy scale carrier boxes small_10030842_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10030842_left_root small_10030842_left_fuel small_10030842_left_count small_10030842_left_encoded small_10030842_left_checked

theorem cover_10030842 : CoveredBy scale carrier boxes root_10030842 := by
  apply coveredBy_split_literal root_10030842 small_10030842_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.root_10031040 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_10030842_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.cover_10031040
#print axioms cover_10030842

def root_10030837 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10030837_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10030837_right_fuel : Nat := 1
def small_10030837_right_count : Nat := 1
def small_10030837_right_encoded : String := "00000000"
theorem small_10030837_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10030837_right_root small_10030837_right_fuel small_10030837_right_count small_10030837_right_encoded = true := by
  decide +kernel
theorem small_10030837_right_covered : CoveredBy scale carrier boxes small_10030837_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10030837_right_root small_10030837_right_fuel small_10030837_right_count small_10030837_right_encoded small_10030837_right_checked

theorem cover_10030837 : CoveredBy scale carrier boxes root_10030837 := by
  apply coveredBy_split_literal root_10030837 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.root_10030842 small_10030837_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.cover_10030842
  · exact small_10030837_right_covered
#print axioms cover_10030837

def root_10030587 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10030587_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10030587_left_fuel : Nat := 23
def small_10030587_left_count : Nat := 117
def small_10030587_left_encoded : String := "120701000000000008A91303120701020000000108A9130712070106000000030000000512073D06050000FA00000007000000050000000312073D0208A913071207010600000003050000FA135D80FB00000002050000FE135D80FF0000000404548A0113867100000000000CFD9C030F34D10200000001000000050F350D0204548A0713867106000000030000000500000007000000011386AD000CFD9C030F34D10200000001000000050F350D0204548A0713867106000000030C9A87020F87510300000001078000FA128A7CFB00000002078000FE128A7CFF00000004067ECE8100000007000000070000000500000005000000051386AD060C9A8702000000070F878D030000000700000001000000030000000100000000000000050000000512073D06050000FA135D80FB00000002050000FE135D80FF0000000404548A01000000071386AD000CFD9C03000000070F350D0200000007000000010000000000000007135D44FB050000FE135D80FF0000000404548A0113867100000000000CFD9C03000000060F350D0200000007000000011386AD000CFD9C03000000060F350D020CFD9C070F34D106000000030000000600000006000000010000000000000007000000020000000300000001"
theorem small_10030587_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10030587_left_root small_10030587_left_fuel small_10030587_left_count small_10030587_left_encoded = true := by
  decide +kernel
theorem small_10030587_left_covered : CoveredBy scale carrier boxes small_10030587_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10030587_left_root small_10030587_left_fuel small_10030587_left_count small_10030587_left_encoded small_10030587_left_checked

theorem cover_10030587 : CoveredBy scale carrier boxes root_10030587 := by
  apply coveredBy_split_literal root_10030587 small_10030587_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.root_10030837 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_10030587_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.cover_10030837
#print axioms cover_10030587

def root_10030582 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10030582_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10030582_right_fuel : Nat := 1
def small_10030582_right_count : Nat := 1
def small_10030582_right_encoded : String := "00000004"
theorem small_10030582_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10030582_right_root small_10030582_right_fuel small_10030582_right_count small_10030582_right_encoded = true := by
  decide +kernel
theorem small_10030582_right_covered : CoveredBy scale carrier boxes small_10030582_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10030582_right_root small_10030582_right_fuel small_10030582_right_count small_10030582_right_encoded small_10030582_right_checked

theorem cover_10030582 : CoveredBy scale carrier boxes root_10030582 := by
  apply coveredBy_split_literal root_10030582 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.root_10030587 small_10030582_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.cover_10030587
  · exact small_10030582_right_covered
#print axioms cover_10030582

def root_10026318 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10026318 : CoveredBy scale carrier boxes root_10026318 := by
  apply coveredBy_split_literal root_10026318 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.root_10026319 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.root_10030582 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.cover_10026319
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.cover_10030582
#print axioms cover_10026318

def root_10026313 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10026313_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10026313_right_fuel : Nat := 1
def small_10026313_right_count : Nat := 1
def small_10026313_right_encoded : String := "00000003"
theorem small_10026313_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10026313_right_root small_10026313_right_fuel small_10026313_right_count small_10026313_right_encoded = true := by
  decide +kernel
theorem small_10026313_right_covered : CoveredBy scale carrier boxes small_10026313_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10026313_right_root small_10026313_right_fuel small_10026313_right_count small_10026313_right_encoded small_10026313_right_checked

theorem cover_10026313 : CoveredBy scale carrier boxes root_10026313 := by
  apply coveredBy_split_literal root_10026313 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.root_10026318 small_10026313_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.cover_10026318
  · exact small_10026313_right_covered
#print axioms cover_10026313

def root_10026063 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10026063_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10026063_left_fuel : Nat := 16
def small_10026063_left_count : Nat := 113
def small_10026063_left_encoded : String := "1151E907000000030A0000FE115224FF0000000408A91301120701000000000008A913030000000912073D0208A912FF00000009120700FE00000009000000040000000112073D0008A9130312070102000000010000000612073D0208A912FF12073CFE00000004050000FA135D80FB0000000205000106135D4507000000030CFD9C010F34D10000000000000000090F350D000000000600000000135D81070CFD9C01000000060F350D00000000060000000000000003135D44FB05000106135D4507000000030CFD9C010F34D1000000000000000009000000060000000600000002120700FE050000FA135D80FB0000000205000106135D4507000000030000000600000006135D44FB05000106135D4507000000030000000600000006000000020000000400000001000000001151E8FF08A9130112070100000000000000000712073D0008A9130312070102000000010000000612073D02050000FA135D80FB0000000205000106135D45070000000300000007135D8107050000FE135D80FF000000040CFD9C01000000060F350D0000000006000000000000000700000003135D44FB05000106000000060000000600000002000000010000000000000004"
theorem small_10026063_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10026063_left_root small_10026063_left_fuel small_10026063_left_count small_10026063_left_encoded = true := by
  decide +kernel
theorem small_10026063_left_covered : CoveredBy scale carrier boxes small_10026063_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10026063_left_root small_10026063_left_fuel small_10026063_left_count small_10026063_left_encoded small_10026063_left_checked

theorem cover_10026063 : CoveredBy scale carrier boxes root_10026063 := by
  apply coveredBy_split_literal root_10026063 small_10026063_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.root_10026313 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_10026063_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.cover_10026313
#print axioms cover_10026063

def root_10026058 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10026058_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10026058_right_fuel : Nat := 1
def small_10026058_right_count : Nat := 1
def small_10026058_right_encoded : String := "00000002"
theorem small_10026058_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10026058_right_root small_10026058_right_fuel small_10026058_right_count small_10026058_right_encoded = true := by
  decide +kernel
theorem small_10026058_right_covered : CoveredBy scale carrier boxes small_10026058_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10026058_right_root small_10026058_right_fuel small_10026058_right_count small_10026058_right_encoded small_10026058_right_checked

theorem cover_10026058 : CoveredBy scale carrier boxes root_10026058 := by
  apply coveredBy_split_literal root_10026058 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.root_10026063 small_10026058_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.cover_10026063
  · exact small_10026058_right_covered
#print axioms cover_10026058

def root_10010898 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10010898 : CoveredBy scale carrier boxes root_10010898 := by
  apply coveredBy_split_literal root_10010898 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.root_10010899 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.root_10026058 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.cover_10010899
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.cover_10026058
#print axioms cover_10010898

def root_10010893 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10010893_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10010893_right_fuel : Nat := 1
def small_10010893_right_count : Nat := 1
def small_10010893_right_encoded : String := "00000001"
theorem small_10010893_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10010893_right_root small_10010893_right_fuel small_10010893_right_count small_10010893_right_encoded = true := by
  decide +kernel
theorem small_10010893_right_covered : CoveredBy scale carrier boxes small_10010893_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10010893_right_root small_10010893_right_fuel small_10010893_right_count small_10010893_right_encoded small_10010893_right_checked

theorem cover_10010893 : CoveredBy scale carrier boxes root_10010893 := by
  apply coveredBy_split_literal root_10010893 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.root_10010898 small_10010893_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.cover_10010898
  · exact small_10010893_right_covered
#print axioms cover_10010893

def root_10005401 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10005401 : CoveredBy scale carrier boxes root_10005401 := by
  apply coveredBy_split_literal root_10005401 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.root_10005402 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.root_10010893 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.cover_10005402
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.cover_10010893
#print axioms cover_10005401

def root_10005396 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10005396_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10005396_right_fuel : Nat := 1
def small_10005396_right_count : Nat := 1
def small_10005396_right_encoded : String := "00000000"
theorem small_10005396_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10005396_right_root small_10005396_right_fuel small_10005396_right_count small_10005396_right_encoded = true := by
  decide +kernel
theorem small_10005396_right_covered : CoveredBy scale carrier boxes small_10005396_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10005396_right_root small_10005396_right_fuel small_10005396_right_count small_10005396_right_encoded small_10005396_right_checked

theorem cover_10005396 : CoveredBy scale carrier boxes root_10005396 := by
  apply coveredBy_split_literal root_10005396 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.root_10005401 small_10005396_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.cover_10005401
  · exact small_10005396_right_covered
#print axioms cover_10005396

def root_9996298 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9996298 : CoveredBy scale carrier boxes root_9996298 := by
  apply coveredBy_split_literal root_9996298 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.root_9996299 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.root_10005396 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.cover_9996299
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.cover_10005396
#print axioms cover_9996298

def root_10046018 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10046018_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10046018_left_fuel : Nat := 23
def small_10046018_left_count : Nat := 369
def small_10046018_left_encoded : String := "1151E907000000030A0000FE1152250908A91301120701000000000008A91303120701020000000108A912FB00000009120700FA000000090000000212073D0208A912FB12073CFA0000000208A91309120700FE000000090000000412073CFE0000000405000106135D45070000000304548A0113867100000000000CFD9C03000000090F350D020CFD9BFB000000090F34D0FA0000000900000002000000011386AD000CFD9C030F34D10200000001000000060F350D020CFD9BFB000000060F34D0FA0CFD9C090000000600000006000000020000000100000000135D810704548A0113867100000000000CFD9C030F34D10200000001000000060F350D020CFD9BFB000000060F34D0FA0000000900000002000000011386AD000CFD9C03000000060F350D0200000006000000010000000000000003120700FA08A91309120700FE000000090000000412073CFE0000000405000106135D45070000000304548A011386710000000000000000091386AD000CFD9C030F34D10200000001000000090F350D02045489FB1386ACFA000000020CFD9C09000000090F350CFE0000000400000006138670FA0CFD9C09000000090000000A000000020000000100000000135D810704548A0113867100000000000CFD9C03000000090F350D02045489FB00000009138670FA0000000900000002000000011386AD000CFD9C030F34D10200000001000000060F350D02045489FB1386ACFA000000020CFD9C090000000600000006138670FA0CFD9C090F34D0FE00000009000000040000000A00000002000000010000000000000003000000020000000112073D0008A91303120701020000000108A912FB12073CFA0000000200000006120700FA08A91309120700FE0000000900000004000000060000000212073D0208A912FB12073CFA0000000208A91309120700FE05000106135D4507000000030CFD9C010F34D10000000000000000090F350D000CFD9C03000000060F350D02000000060000000100000000135D81070CFD9C010F34D100000000000CFD9C03000000060F350D020CFD9BFB000000060F34D0FA0000000600000002000000010F350D000000000600000000000000030000000412073CFE0000000405000106135D4507000000030CFD9C010F34D100000000000CFD9C03000000060F350D0200000006000000010000000600000006120700FA08A91309120700FE05000106135D4507000000030CFD9C010F34D10000000000000000090F350D000CFD9C030F34D10200000001000000090F350D02045489FB1386ACFA0000000204548A090000000600000006138670FA04548A09000000091386ACFE000000040C9A87000000000600000009000000020000000100000000135D81070CFD9C010F34D10000000000000000090F350D000CFD9C03000000060F350D02045489FB00000006138670FA04548A09138670FE0C9A870000000006000000090000000400000006000000020000000100000000000000030000000412073CFE0000000405000106135D4507000000030CFD9C010F34D100000000000CFD9C030F34D10200000001000000060F350D02045489FB1386ACFA0000000200000006138670FA0CFD9C090F34D0FE00000009000000040000000500000002000000010F350D000CFD9C03000000060F350D02000000060000000100000000135D81070CFD9C010F34D100000000000CFD9C03000000060F350D02045489FB00000006138670FA0CFD9C09000000060000000500000002000000010F350D00000000060000000000000003000000020000000100000000000000041151E9090000000408A91301120701000000000008A9130312070102000000010000000612073D0208A912FB00000006120700FA05000106135D450700000003050000FE135D810904548A0113867100000000000CFD9C03000000060F350D02000000060000000100000006000000040000000600000006000000020000000112073D0008A913030000000612073D02000000060000000100000000"
theorem small_10046018_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10046018_left_root small_10046018_left_fuel small_10046018_left_count small_10046018_left_encoded = true := by
  decide +kernel
theorem small_10046018_left_covered : CoveredBy scale carrier boxes small_10046018_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10046018_left_root small_10046018_left_fuel small_10046018_left_count small_10046018_left_encoded small_10046018_left_checked

theorem cover_10046018 : CoveredBy scale carrier boxes root_10046018 := by
  apply coveredBy_split_literal root_10046018 small_10046018_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3764.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_10046018_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3764.covered
#print axioms cover_10046018

def root_10046012 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10046012_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10046012_left_fuel : Nat := 1
def small_10046012_left_count : Nat := 1
def small_10046012_left_encoded : String := "00000002"
theorem small_10046012_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10046012_left_root small_10046012_left_fuel small_10046012_left_count small_10046012_left_encoded = true := by
  decide +kernel
theorem small_10046012_left_covered : CoveredBy scale carrier boxes small_10046012_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10046012_left_root small_10046012_left_fuel small_10046012_left_count small_10046012_left_encoded small_10046012_left_checked

theorem cover_10046012 : CoveredBy scale carrier boxes root_10046012 := by
  apply coveredBy_split_literal root_10046012 small_10046012_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.root_10046018 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_10046012_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.cover_10046018
#print axioms cover_10046012

def root_10046011 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10046011_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10046011_right_fuel : Nat := 20
def small_10046011_right_count : Nat := 161
def small_10046011_right_encoded : String := "1151E8FB0A0001061151E907000000030A0000FE1152250908A91301120701000000000008A9130312070102000000010000000A12073D0208A91309120700FE050000FA000000090000000A0000000412073CFE00000004050000FA135D80FB0000000205000106135D45070000000304548A0113867100000000000CFD9C03000000060F350D0200000008000000010000000600000006135D44FB05000106135D45070000000304548A0113867100000000000CFD9C030000000A000000080000000A00000006000000020000000112073D0008A91303120701020000000108A91309000000060000000A12073D0208A91309120700FE050000FA00000006135D44FB00000006000000020000000412073CFE00000004000000060000000100000000000000041151E9090000000408A91301120701000000000008A913031207010200000001050000FA00000006135D44FB0500010600000006000000060000000212073D02000000060000000112073D0008A913031207010200000001050000FA000000060000000A0000000600000000115225070A0000FE1152250908A91301120701000000000008A9130312070102000000010000000A12073D0208A9130712070106000000030000000A12073D0608A91309120700FE000000080000000412073CFE00000004050000FA0000000600000006000000030000000112073D0008A9130312070102000000010000000612073D0208A91307120701060000000308A91309120700FE000000060000000400000006000000060000000100000000000000041151E9090000000408A9130112070100000000000000000612073D0008A9130312070102000000010000000A00000006000000000000000300000002"
theorem small_10046011_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10046011_right_root small_10046011_right_fuel small_10046011_right_count small_10046011_right_encoded = true := by
  decide +kernel
theorem small_10046011_right_covered : CoveredBy scale carrier boxes small_10046011_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10046011_right_root small_10046011_right_fuel small_10046011_right_count small_10046011_right_encoded small_10046011_right_checked

theorem cover_10046011 : CoveredBy scale carrier boxes root_10046011 := by
  apply coveredBy_split_literal root_10046011 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.root_10046012 small_10046011_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.cover_10046012
  · exact small_10046011_right_covered
#print axioms cover_10046011

def root_10046006 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10046006_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10046006_right_fuel : Nat := 1
def small_10046006_right_count : Nat := 1
def small_10046006_right_encoded : String := "00000001"
theorem small_10046006_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10046006_right_root small_10046006_right_fuel small_10046006_right_count small_10046006_right_encoded = true := by
  decide +kernel
theorem small_10046006_right_covered : CoveredBy scale carrier boxes small_10046006_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10046006_right_root small_10046006_right_fuel small_10046006_right_count small_10046006_right_encoded small_10046006_right_checked

theorem cover_10046006 : CoveredBy scale carrier boxes root_10046006 := by
  apply coveredBy_split_literal root_10046006 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.root_10046011 small_10046006_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.cover_10046011
  · exact small_10046006_right_covered
#print axioms cover_10046006

def root_10043848 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10043848 : CoveredBy scale carrier boxes root_10043848 := by
  apply coveredBy_split_literal root_10043848 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3763.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.root_10046006 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3763.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.cover_10046006
#print axioms cover_10043848

def root_10043843 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10043843_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10043843_right_fuel : Nat := 1
def small_10043843_right_count : Nat := 1
def small_10043843_right_encoded : String := "00000000"
theorem small_10043843_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10043843_right_root small_10043843_right_fuel small_10043843_right_count small_10043843_right_encoded = true := by
  decide +kernel
theorem small_10043843_right_covered : CoveredBy scale carrier boxes small_10043843_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10043843_right_root small_10043843_right_fuel small_10043843_right_count small_10043843_right_encoded small_10043843_right_checked

theorem cover_10043843 : CoveredBy scale carrier boxes root_10043843 := by
  apply coveredBy_split_literal root_10043843 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.root_10043848 small_10043843_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.cover_10043848
  · exact small_10043843_right_covered
#print axioms cover_10043843

def root_10041913 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10041913 : CoveredBy scale carrier boxes root_10041913 := by
  apply coveredBy_split_literal root_10041913 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3762.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.root_10043843 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3762.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.cover_10043843
#print axioms cover_10041913

def root_9996297 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9996297 : CoveredBy scale carrier boxes root_9996297 := by
  apply coveredBy_split_literal root_9996297 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.root_9996298 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.root_10041913 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.cover_9996298
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.cover_10041913
#print axioms cover_9996297

def root_10049912 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10049912 : CoveredBy scale carrier boxes root_10049912 := by
  apply coveredBy_split_literal root_10049912 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3765.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3766.root coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3765.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3766.covered
#print axioms cover_10049912

def root_10049906 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10049906_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10049906_left_fuel : Nat := 1
def small_10049906_left_count : Nat := 1
def small_10049906_left_encoded : String := "00000000"
theorem small_10049906_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10049906_left_root small_10049906_left_fuel small_10049906_left_count small_10049906_left_encoded = true := by
  decide +kernel
theorem small_10049906_left_covered : CoveredBy scale carrier boxes small_10049906_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10049906_left_root small_10049906_left_fuel small_10049906_left_count small_10049906_left_encoded small_10049906_left_checked

theorem cover_10049906 : CoveredBy scale carrier boxes root_10049906 := by
  apply coveredBy_split_literal root_10049906 small_10049906_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.root_10049912 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_10049906_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.cover_10049912
#print axioms cover_10049906

def root_10049905 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10049905 : CoveredBy scale carrier boxes root_10049905 := by
  apply coveredBy_split_literal root_10049905 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.root_10049906 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3767.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.cover_10049906
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3767.covered
#print axioms cover_10049905

def root_10049904 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10049904 : CoveredBy scale carrier boxes root_10049904 := by
  apply coveredBy_split_literal root_10049904 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.root_10049905 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3768.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.cover_10049905
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3768.covered
#print axioms cover_10049904

def root_9996296 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9996296 : CoveredBy scale carrier boxes root_9996296 := by
  apply coveredBy_split_literal root_9996296 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.root_9996297 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.root_10049904 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.cover_9996297
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.cover_10049904
#print axioms cover_9996296

def root_9944476 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9944476 : CoveredBy scale carrier boxes root_9944476 := by
  apply coveredBy_split_literal root_9944476 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.root_9944477 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.root_9996296 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0236.cover_9944477
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.cover_9996296
#print axioms cover_9944476

def root_9831140 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9831140 : CoveredBy scale carrier boxes root_9831140 := by
  apply coveredBy_split_literal root_9831140 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.root_9831141 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.root_9944476 coord3 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0234.cover_9831141
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.cover_9944476
#print axioms cover_9831140

def root_10060850 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10060850 : CoveredBy scale carrier boxes root_10060850 := by
  apply coveredBy_split_literal root_10060850 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3770.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3771.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3770.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3771.covered
#print axioms cover_10060850

def root_10060845 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10060845_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10060845_right_fuel : Nat := 1
def small_10060845_right_count : Nat := 1
def small_10060845_right_encoded : String := "00000001"
theorem small_10060845_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10060845_right_root small_10060845_right_fuel small_10060845_right_count small_10060845_right_encoded = true := by
  decide +kernel
theorem small_10060845_right_covered : CoveredBy scale carrier boxes small_10060845_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10060845_right_root small_10060845_right_fuel small_10060845_right_count small_10060845_right_encoded small_10060845_right_checked

theorem cover_10060845 : CoveredBy scale carrier boxes root_10060845 := by
  apply coveredBy_split_literal root_10060845 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.root_10060850 small_10060845_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.cover_10060850
  · exact small_10060845_right_covered
#print axioms cover_10060845

def root_10060419 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10060419_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10060419_left_fuel : Nat := 26
def small_10060419_left_count : Nat := 201
def small_10060419_left_encoded : String := "1151E903000000010A0000FA115225050A0000FC115224FD000000030A0001081151E8FF0000000600000004115224FF0000000408A91305120700FA08A912FD12073CFC0000000308A912FF0000000512070108000000040500010000000005135D81010500010200000005135D810304548A0500000005000000060000000100000000120700FC08A912FF0000000500000008000000030000000212073CFA0000000208A912FD12073CFC0000000308A912FF00000006120701080000000405000100135D45010000000005000102135D45030000000100000006135D81030CFD9C050F34D0FA0000000600000002000000060000000100000006120700FC08A912FF00000006120701080000000405000100135D45010000000005000102135D4503000000010CFD9C050000000800000006135D81030CFD9C050F34D0FA00000008000000020F350CFA00000002045489FD00000006138670FC045489FF00000006000000080000000300000001135D81010500010200000006135D81030CFD9C0500000008000000060000000100000000000000031151E8FD0A0001081151E8FF0000000500000004115224FF0000000408A91305120700FA08A912FF000000051207010800000004000000060000000212073CFA0000000208A912FF0000000612070108000000040000000600000003000000021151E905000000020A0000FC115224FD000000030A0001081151E8FF0000000600000004115224FF0000000408A912FD12073CFC0000000308A912FF00000006120701080000000405000100135D4501000000000500010200000006135D8103050000FA000000060000000A0000000100000006120700FC08A912FF00000006120701080000000405000100135D45010000000005000102135D450300000001050000FA00000006135D45050000000200000006135D8103050000FA135D8105045489FD00000006138670FC045489FF0000000613867108000000040280010013D7B10100000000078001020000000A128A7D030000000A00000001000000060000000300000002135D4505000000020000000A0000000100000006000000031151E8FD0000000600000003"
theorem small_10060419_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10060419_left_root small_10060419_left_fuel small_10060419_left_count small_10060419_left_encoded = true := by
  decide +kernel
theorem small_10060419_left_covered : CoveredBy scale carrier boxes small_10060419_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10060419_left_root small_10060419_left_fuel small_10060419_left_count small_10060419_left_encoded small_10060419_left_checked

theorem cover_10060419 : CoveredBy scale carrier boxes root_10060419 := by
  apply coveredBy_split_literal root_10060419 small_10060419_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.root_10060845 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_10060419_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.cover_10060845
#print axioms cover_10060419

def root_10060413 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10060413_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10060413_left_fuel : Nat := 1
def small_10060413_left_count : Nat := 1
def small_10060413_left_encoded : String := "00000000"
theorem small_10060413_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10060413_left_root small_10060413_left_fuel small_10060413_left_count small_10060413_left_encoded = true := by
  decide +kernel
theorem small_10060413_left_covered : CoveredBy scale carrier boxes small_10060413_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10060413_left_root small_10060413_left_fuel small_10060413_left_count small_10060413_left_encoded small_10060413_left_checked

theorem cover_10060413 : CoveredBy scale carrier boxes root_10060413 := by
  apply coveredBy_split_literal root_10060413 small_10060413_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.root_10060419 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_10060413_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.cover_10060419
#print axioms cover_10060413

def root_10060412 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10060412 : CoveredBy scale carrier boxes root_10060412 := by
  apply coveredBy_split_literal root_10060412 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.root_10060413 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3772.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.cover_10060413
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3772.covered
#print axioms cover_10060412

def root_10060411 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10060411 : CoveredBy scale carrier boxes root_10060411 := by
  apply coveredBy_split_literal root_10060411 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.root_10060412 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3773.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.cover_10060412
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3773.covered
#print axioms cover_10060411

def root_10058535 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10058535 : CoveredBy scale carrier boxes root_10058535 := by
  apply coveredBy_split_literal root_10058535 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3769.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.root_10060411 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3769.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.cover_10060411
#print axioms cover_10058535

def root_10074794 : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10074794_left_root : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-5448672)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10074794_left_fuel : Nat := 26
def small_10074794_left_count : Nat := 339
def small_10074794_left_encoded : String := "12EA94FE000000040B4D43FA10804D050B4D43FC10804D070000000500000003108011070000000303C0010013A5110100000000011523430000000513F895020793F0BF00000005128220FE0BF3E57A1009290500000005000000021008ED05000000020AA6A27C10EDAD07032001000000000A13C145010000000500000000000000030000000A000000040000000113A54D01011523430000000513F895020793F0BF00000005128220FE0BF3E57A1009290500000005000000021008ED05000000020AA6A27C10EDAD07000000050000000310ED710700000003046001001383DD01000000000000000A13841901019FB4630000000513EF350207095F9F000000050000000800000001000000000000000400000001000000000000000210801105000000020B4D43FC10804D0703C0010013A5110100000000011523430000000513F895020793F0BF00000005000000090000000113A54D01011523430000000513F895020793F0BF00000005128220FE0AA6A27A10EDAD05000000050000000210ED7105000000020000000900000004000000010000000000000003108011070000000303C0010013A51101000000000115234313F85902000000010793F0BF00000005128220FE0AA6A27A10EDAD05000000050000000210ED7105000000020AA6A27C10EDAD07000000050000000310ED7107000000030000000A0000000413F895020793F0BF12825CFE000000040AA6A27A0000000A00000009128220FE0AA6A27A10EDAD050AA6A27C10EDAD07032001000000000900000009000000030000000A0000000200000009000000040000000113A54D010115234313F85902000000010793F0BF00000005128220FE0AA6A27A10EDAD05000000050000000210ED7105000000020AA6A27C10EDAD07000000050000000310ED710700000003046001001383DD0100000000008A92230000000513FE350207095F9F00000005000000AA0000000113841901008A92230000000513FE350207095F9F00000005000000AA00000001000000000000000413F895020793F0BF12825CFE000000040AA6A27A10EDAD05000000050000000210ED7105000000020AA6A27C10EDAD07000000050000000310ED71070000000300000007128220FE0AA6A27A10EDAD050AA6A27C10EDAD07046001001383DD0100000000019FB4630000000513EF350207095F9F00000005000000090000000113841901019FB4630000000513EF350207095F9F000000050000000600000001000000000000000310ED710700000003046001001383DD0100000000019FB4630000000A0000000A13841901019FB46313EEF9020000000107095F9F0000000512B880FE0AF9F33A10B82905000000050000000210B7ED05000000020A5351BC1121010700000005000000030000000A0000000413EF350207095F9F0000000A12B880FE0AF9F33A0000000810B7ED05000000020A5351BC000000060000000A0000000400000001000000000000000210ED7105000000020AA6A27C10EDAD07046001000000000913841901019FB46313EEF9020000000107095F9F0000000512B880FE000000060000000400000006000000000000000310ED710700000003046001001383DD0100000000019FB46313EEF9020000000107095F9F0000000A000000090000000913841901019FB46313EEF9020000000107095F9F12B8BCFE000000040000000712B880FE0A5351BA112101050A5351BC1121010700000006000000030000000A000000021120C505000000020A5351BC00000006000000070000000413EF350207095F9F0000000612B880FE0A5351BA0000000600000006000000040000000100000000000000040000000100000000"
theorem small_10074794_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10074794_left_root small_10074794_left_fuel small_10074794_left_count small_10074794_left_encoded = true := by
  decide +kernel
theorem small_10074794_left_covered : CoveredBy scale carrier boxes small_10074794_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10074794_left_root small_10074794_left_fuel small_10074794_left_count small_10074794_left_encoded small_10074794_left_checked

theorem cover_10074794 : CoveredBy scale carrier boxes root_10074794 := by
  apply coveredBy_split_literal root_10074794 small_10074794_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3776.root coord4 true (-5448672)
  · decide +kernel
  · decide +kernel
  · exact small_10074794_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3776.covered
#print axioms cover_10074794

def root_10074788 : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10074788_left_root : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(16378880), (16678144)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10074788_left_fuel : Nat := 1
def small_10074788_left_count : Nat := 1
def small_10074788_left_encoded : String := "00000001"
theorem small_10074788_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10074788_left_root small_10074788_left_fuel small_10074788_left_count small_10074788_left_encoded = true := by
  decide +kernel
theorem small_10074788_left_covered : CoveredBy scale carrier boxes small_10074788_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10074788_left_root small_10074788_left_fuel small_10074788_left_count small_10074788_left_encoded small_10074788_left_checked

theorem cover_10074788 : CoveredBy scale carrier boxes root_10074788 := by
  apply coveredBy_split_literal root_10074788 small_10074788_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.root_10074794 coord1 false (16678144)
  · decide +kernel
  · decide +kernel
  · exact small_10074788_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.cover_10074794
#print axioms cover_10074788

def root_10074787 : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10074787_right_root : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16645888)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(1816224), (3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10074787_right_fuel : Nat := 23
def small_10074787_right_count : Nat := 421
def small_10074787_right_encoded : String := "13E20102067ECE7F12EA94FE000000040B4D43FA10804D050B4D43FC10804D0703C0010013A5110100000000033F67C313BBF502000000010793F0BF00000005128220FE0BF3E57A100929050BF3E57C1009290700000005000000031008ED0700000003032001000000000913C1450102B4D6A300000005000000080000000000000002000000090000000413BC31020793F0BF12825CFE000000040BF3E57A100929050BF3E57C1009290700000005000000030000000A0000000200000009000000090000000113A54D01033F67C313BBF502000000010793F0BF00000005128220FE0BF3E57A100929050BF3E57C10092907000000050000000300000008000000021008ED05000000020BF3E57C000000061008ED0700000003000000060000000413BC31020793F0BF0000000600000008000000010000000000000003108011070000000303C0010013A5110100000000033F67C313BBF502000000010793F0BF0000000A128220FE0BF3E57A100929050AA6A27C10EDAD070000000A000000030000000A000000021008ED05000000020AA6A27C10EDAD07032001000000000913C1450102B4D6A30000000A0000000900000000000000030000000A0000000413BC31020793F0BF0000000A128220FE0BF3E57A000000081008ED050000000200000009000000040000000113A54D01033F67C313BBF502000000010793F0BF12825CFE000000040BF3E57A1009290500000005000000021008ED05000000020AA6A27C10EDAD070460010000000005138419010000000500000000000000030000000A128220FE0BF3E57A000000081008ED05000000020AA6A27C10EDAD07046001001383DD010000000002B4D6A313D0D1020000000107095F9F000000050000000800000008000000080000000310ED710700000003046001000000000A000000080000000413BC31020793F0BF12825CFE000000040BF3E57A000000081008ED05000000020AA6A27C000000060000000A0000000800000001000000000000000210801105000000020B4D43FC10804D0703C001000000000913A54D01033F67C313BBF502000000010793F0BF00000006128220FE0000000600000004000000060000000000000003108011070000000303C0010013A5110100000000033F67C313BBF502000000010793F0BF0000000A000000090000000913A54D01033F67C313BBF502000000010793F0BF12825CFE000000040AA6A27A10EDAD050AA6A27C10EDAD07046001000000000A00000006000000030000000A0000000210ED7105000000020AA6A27C0000000600000007128220FE0AA6A27A10EDAD050AA6A27C10EDAD070460010000000009000000060000000310ED710700000003046001001383DD01000000000000000A1384190102B4D6A313D0D1020000000107095F9F000000060000000800000006000000000000000210ED7105000000020AA6A27C10EDAD07000000060000000310ED7107000000030460010000000007000000060000000413BC31020793F0BF12825CFE000000040AA6A27A0000000600000006128220FE0AA6A27A10EDAD050AA6A27C0000000600000008000000020000000600000004000000010000000012EA58FE0B4D43FA10804D050B4D43FC10804D0703C0010013A5110100000000033F67C313BBF502000000010569AC3F134110FE000000040BF3E57A100929050BF3E57C000000070000000800000002000000091340D4FE000000080000000413BC3102000000090000000113A54D01033F67C313BBF502000000010569AC3F134110FE000000040000000800000008000000080000000000000003108011070000000303C0010013A5110100000000033F67C313BBF502000000010569AC3F134110FE000000040BF3E57A000000081008ED05000000020AA6A27C10EDAD07000000090000000310ED710700000003032001000000000900000008000000080000000813A54D0100000008000000000000000210801105000000020B4D43FC10804D0703C001000000000913A54D01033F67C313BBF502000000010569AC3F0000000600000009000000060000000000000003108011070000000303C0010013A5110100000000033F67C313BBF502000000010569AC3F00000009000000050000000513A54D01033F67C313BBF502000000010569AC3F134110FE000000040AA6A27A10EDAD050AA6A27C10EDAD0704600100000000090000000600000003000000080000000210ED7105000000020AA6A27C0000000910ED7107000000030460010000000009000000050000000500000005000000000000000400000001"
theorem small_10074787_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10074787_right_root small_10074787_right_fuel small_10074787_right_count small_10074787_right_encoded = true := by
  decide +kernel
theorem small_10074787_right_covered : CoveredBy scale carrier boxes small_10074787_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10074787_right_root small_10074787_right_fuel small_10074787_right_count small_10074787_right_encoded small_10074787_right_checked

theorem cover_10074787 : CoveredBy scale carrier boxes root_10074787 := by
  apply coveredBy_split_literal root_10074787 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.root_10074788 small_10074787_right_root coord1 true (1816224)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.cover_10074788
  · exact small_10074787_right_covered
#print axioms cover_10074787

def root_10074782 : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10074782_right_root : ZRayBox := fun j => (#[⟨⟨(2097152), (4194304)⟩, ⟨(16645888), (16777216)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10074782_right_fuel : Nat := 1
def small_10074782_right_count : Nat := 1
def small_10074782_right_encoded : String := "00000000"
theorem small_10074782_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10074782_right_root small_10074782_right_fuel small_10074782_right_count small_10074782_right_encoded = true := by
  decide +kernel
theorem small_10074782_right_covered : CoveredBy scale carrier boxes small_10074782_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10074782_right_root small_10074782_right_fuel small_10074782_right_count small_10074782_right_encoded small_10074782_right_checked

theorem cover_10074782 : CoveredBy scale carrier boxes root_10074782 := by
  apply coveredBy_split_literal root_10074782 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.root_10074787 small_10074782_right_root coord0 true (16645888)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.cover_10074787
  · exact small_10074782_right_covered
#print axioms cover_10074782

def root_10074336 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10074336_left_root : ZRayBox := fun j => (#[⟨⟨(0), (2097152)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10074336_left_fuel : Nat := 21
def small_10074336_left_count : Nat := 213
def small_10074336_left_encoded : String := "13D7B10100000000022A458313E1C50200000001067ECE7F12EA94FE000000040B4D43FA10804D050B4D43FC10804D0700000005000000031080110700000003014001000000000A13F6150101152343000000050000000A000000000000000210801105000000020B4D43FC10804D0700000009000000031080110700000003014001000000000913F615010115234313F85902000000010793F0BF00000005128220FE0AA6A27A0000000A0000000800000004000000090000000012EA58FE0B4D43FA10804D050B4D43FC10804D07014001000000000913F61501011523430000000713F895020569AC3F134110FE00000004000000090000000700000001000000000000000310801107000000030140010013F5D901000000000115234313F85902000000010569AC3F0000000A0000000613F895020569AC3F0000000A000000090000000113F615010115234313F85902000000010569AC3F134110FE000000040BF3E57A100929050AA6A27C0000000700000006000000021008ED05000000020AA6A27C10EDAD0701E001000000000700000007000000030000000A1340D4FE0BF3E57A000000071008ED0500000002000000070000000413F895020569AC3F134110FE000000040BF3E57A100929050AA6A27C10EDAD0701E001000000000700000007000000030000000A000000021008ED05000000020AA6A27C000000090000000A1340D4FE0BF3E57A1009290500000007000000021008ED0500000002000000090000000400000001000000000000000210801105000000020B4D43FC10804D0700000009000000031080110700000003014001000000000913F615010115234313F85902000000010569AC3F134110FE00000004000000090000000900000009000000000000000413E20102067ECE7F12EA94FE000000040B4D43FA10804D050B4D43FC10804D0700000009000000031080110700000003014001000000000913F61501033F67C30000000A0000000A00000000000000020000000912EA58FE0B4D43FA10804D050B4D43FC10804D0700000009000000031080110700000003014001000000000913F61501033F67C313BBF502000000010569AC3F134110FE000000040BF3E57A0000000A0000000900000009000000090000000000000002000000090000000400000001"
theorem small_10074336_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10074336_left_root small_10074336_left_fuel small_10074336_left_count small_10074336_left_encoded = true := by
  decide +kernel
theorem small_10074336_left_covered : CoveredBy scale carrier boxes small_10074336_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10074336_left_root small_10074336_left_fuel small_10074336_left_count small_10074336_left_encoded small_10074336_left_checked

theorem cover_10074336 : CoveredBy scale carrier boxes root_10074336 := by
  apply coveredBy_split_literal root_10074336 small_10074336_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.root_10074782 coord0 false (2097152)
  · decide +kernel
  · decide +kernel
  · exact small_10074336_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.cover_10074782
#print axioms cover_10074336

def root_10074330 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10074330_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (13026304)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10074330_left_fuel : Nat := 1
def small_10074330_left_count : Nat := 1
def small_10074330_left_encoded : String := "00000003"
theorem small_10074330_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10074330_left_root small_10074330_left_fuel small_10074330_left_count small_10074330_left_encoded = true := by
  decide +kernel
theorem small_10074330_left_covered : CoveredBy scale carrier boxes small_10074330_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10074330_left_root small_10074330_left_fuel small_10074330_left_count small_10074330_left_encoded small_10074330_left_checked

theorem cover_10074330 : CoveredBy scale carrier boxes root_10074330 := by
  apply coveredBy_split_literal root_10074330 small_10074330_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.root_10074336 coord3 true (13026304)
  · decide +kernel
  · decide +kernel
  · exact small_10074330_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.cover_10074336
#print axioms cover_10074330

def root_10074080 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10074080_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(13026304), (14529792)⟩⟩, ⟨⟨(-12756736), (-10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10074080_left_fuel : Nat := 17
def small_10074080_left_count : Nat := 117
def small_10074080_left_encoded : String := "0F878D070280010013D7B10100000000022A458313E1C50200000001067ECE7F12EA94FE000000040B4D43FA10804D0500000005000000020000000512EA58FE0B4D43FA10804D050000000700000002000000090000000413E20102000000090000000113D7ED01022A458313E1C50200000001067ECE7F0000000512EA58FE0B4D43FA10804D050DE7C9FC000000070E5FD90700000003000000070000000210801105000000020DE7C9FC0E60150700000007000000030E5FD9070000000303C001000000000913A54D010115234313F85902000000010569AC3F000000050000000700000009000000000000000413E20102067ECE7F12EA94FE000000040B4D43FA10804D050DE7C9FC0E60150700000005000000030E5FD9070000000303C0010013A5110100000000033F67C3000000050000000913A54D01033F67C30000000500000006000000000000000210801105000000020DE7C9FC000000060E5FD9070000000303C00100000000090000000612EA58FE0B4D43FA10804D050DE7C9FC0E60150700000006000000030E5FD9070000000303C001000000000913A54D01033F67C313BBF50200000001000000070000000600000000000000020000000900000004000000010000000000000003"
theorem small_10074080_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10074080_left_root small_10074080_left_fuel small_10074080_left_count small_10074080_left_encoded = true := by
  decide +kernel
theorem small_10074080_left_covered : CoveredBy scale carrier boxes small_10074080_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10074080_left_root small_10074080_left_fuel small_10074080_left_count small_10074080_left_encoded small_10074080_left_checked

theorem cover_10074080 : CoveredBy scale carrier boxes root_10074080 := by
  apply coveredBy_split_literal root_10074080 small_10074080_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.root_10074330 coord3 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_10074080_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.cover_10074330
#print axioms cover_10074080

def root_10074074 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10074074_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-10572672), (-8388608)⟩, ⟨(10897344), (13026304)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10074074_left_fuel : Nat := 1
def small_10074074_left_count : Nat := 1
def small_10074074_left_encoded : String := "00000002"
theorem small_10074074_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10074074_left_root small_10074074_left_fuel small_10074074_left_count small_10074074_left_encoded = true := by
  decide +kernel
theorem small_10074074_left_covered : CoveredBy scale carrier boxes small_10074074_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10074074_left_root small_10074074_left_fuel small_10074074_left_count small_10074074_left_encoded small_10074074_left_checked

theorem cover_10074074 : CoveredBy scale carrier boxes root_10074074 := by
  apply coveredBy_split_literal root_10074074 small_10074074_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.root_10074080 coord2 true (13026304)
  · decide +kernel
  · decide +kernel
  · exact small_10074074_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.cover_10074080
#print axioms cover_10074074

def root_10073316 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10073316_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10073316_left_fuel : Nat := 23
def small_10073316_left_count : Nat := 361
def small_10073316_left_encoded : String := "0F878D050C9A86FC0F878D070280010013D7B10100000000022A458313E1C50200000001067ECE7F000000050000000713E20102067ECE7F12EA94FE000000040DE7C9FA0E60150500000005000000020E5FD905000000020DE7C9FC0E60150700000005000000030E5FD90700000003014001000000000913F61501033F67C30000000513BC31020793F0BF0000000500000007000000010000000012EA58FE00000007000000040000000113D7ED01022A458313E1C50200000001067ECE7F000000050000000713E20102067ECE7F12EA94FE000000040DE7C9FA0E60150500000005000000020E5FD905000000020DE7C9FC0E60150700000005000000030000000512EA58FE0DE7C9FA000000070E5FD9050000000200000007000000040000000100000000000000030F875107000000030280010013D7B10100000000022A458313E1C50200000001067ECE7F12EA94FE000000040DE7C9FA0E60150500000005000000020000000512EA58FE0DE7C9FA0E60150500000007000000020E5FD905000000020B4D43FC0000000710801107000000030140010013F5D90100000000011523430000000613F895020569AC3F0000000A000000060000000113F61501011523430000000713F895020569AC3F134110FE000000040D41287A000000070EFA1105000000020AA6A27C000000070000000A0000000700000001000000000000000413E20102067ECE7F12EA94FE000000040DE7C9FA0E6015050B4D43FC10804D070140010013F5D90100000000033F67C3000000050000000A13F61501033F67C30000000500000008000000000000000310801107000000030000000A000000020E5FD905000000020B4D43FC10804D070140010013F5D90100000000033F67C313BBF502000000010000000A0000000913F61501033F67C30000000513BC31020793F0BF00000005128220FE0D41287A00000008000000090000000400000001000000000000000310801107000000030000000A12EA58FE0DE7C9FA0E6015050B4D43FC0000000700000008000000020E5FD905000000020B4D43FC10804D070140010013F5D901000000000000000713F61501033F67C30000000700000008000000000000000310801107000000030140010013F5D90100000000033F67C313BBF502000000010569AC3F0000000A0000000713BC31020569AC3F0000000A000000080000000113F61501033F67C313BBF502000000010569AC3F134110FE000000040D41287A000000080EFA1105000000020000000A000000070000000800000000000000040000000113D7ED01022A458313E1C50200000001067ECE7F0000000512EA58FE0DE7C9FA0E60150500000007000000020E5FD905000000020B4D43FC10804D070000000700000003108011070000000303C0010013A5110100000000011523430000000713F895020569AC3F134110FE000000040D41287A000000070EFA1105000000020AA6A27C0000000700000008000000070000000113A54D010115234313F85902000000010569AC3F000000050000000700000008000000000000000413E20102067ECE7F12EA94FE000000040DE7C9FA0E6015050B4D43FC10804D07000000050000000300000008000000020E5FD905000000020B4D43FC10804D0703C0010013A5110100000000033F67C30000000513BC31020793F0BF00000005000000080000000113A54D01033F67C300000005000000080000000000000003108011070000000303C0010013A5110100000000033F67C313BBF502000000010793F0BF00000005128220FE0D41287A000000080EFA1105000000020000000A0000000413BC31020793F0BF0000000A000000080000000113A54D01033F67C313BBF502000000010793F0BF0000000500000008000000080000000012EA58FE0DE7C9FA000000080E5FD905000000020B4D43FC10804D0700000008000000030000000800000004000000010000000000000002"
theorem small_10073316_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10073316_left_root small_10073316_left_fuel small_10073316_left_count small_10073316_left_encoded = true := by
  decide +kernel
theorem small_10073316_left_covered : CoveredBy scale carrier boxes small_10073316_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10073316_left_root small_10073316_left_fuel small_10073316_left_count small_10073316_left_encoded small_10073316_left_checked

theorem cover_10073316 : CoveredBy scale carrier boxes root_10073316 := by
  apply coveredBy_split_literal root_10073316 small_10073316_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.root_10074074 coord2 false (-10572672)
  · decide +kernel
  · decide +kernel
  · exact small_10073316_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.cover_10074074
#print axioms cover_10073316

def root_10073310 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10073310_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10073310_left_fuel : Nat := 1
def small_10073310_left_count : Nat := 1
def small_10073310_left_encoded : String := "00000004"
theorem small_10073310_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10073310_left_root small_10073310_left_fuel small_10073310_left_count small_10073310_left_encoded = true := by
  decide +kernel
theorem small_10073310_left_covered : CoveredBy scale carrier boxes small_10073310_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10073310_left_root small_10073310_left_fuel small_10073310_left_count small_10073310_left_encoded small_10073310_left_checked

theorem cover_10073310 : CoveredBy scale carrier boxes root_10073310 := by
  apply coveredBy_split_literal root_10073310 small_10073310_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.root_10073316 coord4 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_10073310_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.cover_10073316
#print axioms cover_10073310

def root_10073309 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10073309_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10073309_right_fuel : Nat := 28
def small_10073309_right_count : Nat := 227
def small_10073309_right_encoded : String := "138670FE0C9A86FA0F878D050C9A86FC0F878D0700000007000000030F875107000000030280010013D7B10100000000022A45830000000713E20102022A457F13E200FE000000040DE7C9FA000000070E5FD905000000020B4D43FC0000000700000008000000070000000113D7ED01022A458313E1C50200000001000000070000000800000000000000020F875105000000020C9A86FC0F878D070280010013D7B10100000000022A4583000000070000000913D7ED01022A458313E1C502000000010000000713E20102022A457F13E200FE000000040B4D43FA0000000700000009000000070000000100000000000000030F875107000000030280010013D7B10100000000022A458313E1C50200000001022A457F13E200FE000000040B4D43FA10804D050B4D43FC0000000710801107000000030140010000000007000000070000000210801105000000020B4D43FC000000091080110700000003014001000000000913F615010115234313F8590200000001033F67BF000000090000000500000005000000000000000713E20102022A457F13E200FE000000040B4D43FA10804D050B4D43FC000000091080110700000003000000050000000200000009000000050000000113D7ED01022A458313E1C50200000001022A457F13E200FE000000040B4D43FA10804D050B4D43FC00000007108011070000000303C0010013A51101000000000000000713A54D0100000008000000000000000210801105000000020B4D43FC10804D0703C0010013A51101000000000000000713A54D01011523430000000713F89502033F67BF13BC30FE000000040AA6A27A000000070000000900000005000000010000000000000003108011070000000303C0010013A51101000000000115234313F8590200000001033F67BF13BC30FE000000040AA6A27A10EDAD05000000070000000210ED71050000000200000009000000050000000513A54D010115234313F8590200000001033F67BF13BC30FE000000040AA6A27A10EDAD05000000070000000210ED7105000000020AA6A27C10EDAD07000000070000000310ED710700000003046001001383DD0100000000000000050000000500000005000000050000000013E1C4FE0B4D43FA000000071080110500000002000000050000000413E20102022A457F13E200FE000000040B4D43FA10804D05000000080000000210801105000000020000000500000005000000010000000000000004"
theorem small_10073309_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10073309_right_root small_10073309_right_fuel small_10073309_right_count small_10073309_right_encoded = true := by
  decide +kernel
theorem small_10073309_right_covered : CoveredBy scale carrier boxes small_10073309_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10073309_right_root small_10073309_right_fuel small_10073309_right_count small_10073309_right_encoded small_10073309_right_checked

theorem cover_10073309 : CoveredBy scale carrier boxes root_10073309 := by
  apply coveredBy_split_literal root_10073309 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.root_10073310 small_10073309_right_root coord4 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.cover_10073310
  · exact small_10073309_right_covered
#print axioms cover_10073309

def root_10073303 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10073303_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10073303_left_fuel : Nat := 1
def small_10073303_left_count : Nat := 1
def small_10073303_left_encoded : String := "00000003"
theorem small_10073303_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10073303_left_root small_10073303_left_fuel small_10073303_left_count small_10073303_left_encoded = true := by
  decide +kernel
theorem small_10073303_left_covered : CoveredBy scale carrier boxes small_10073303_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10073303_left_root small_10073303_left_fuel small_10073303_left_count small_10073303_left_encoded small_10073303_left_checked

theorem cover_10073303 : CoveredBy scale carrier boxes root_10073303 := by
  apply coveredBy_split_literal root_10073303 small_10073303_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.root_10073309 coord3 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_10073303_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.cover_10073309
#print axioms cover_10073303

def root_10073245 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10073245_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10073245_left_fuel : Nat := 13
def small_10073245_left_count : Nat := 29
def small_10073245_left_encoded : String := "0F34D0FC045489FF1386ACFE000000040C9A86FA0F878D05028001000000000700000007000000020F87510500000002028001000000000913D7ED01022A45830000000513E201020AD357870000000510D13CFC00000003067ECE7F000000050000000600000001000000000000000700000003"
theorem small_10073245_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10073245_left_root small_10073245_left_fuel small_10073245_left_count small_10073245_left_encoded = true := by
  decide +kernel
theorem small_10073245_left_covered : CoveredBy scale carrier boxes small_10073245_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10073245_left_root small_10073245_left_fuel small_10073245_left_count small_10073245_left_encoded small_10073245_left_checked

theorem cover_10073245 : CoveredBy scale carrier boxes root_10073245 := by
  apply coveredBy_split_literal root_10073245 small_10073245_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.root_10073303 coord3 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_10073245_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.cover_10073303
#print axioms cover_10073245

def root_10073239 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10073239_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10073239_left_fuel : Nat := 1
def small_10073239_left_count : Nat := 1
def small_10073239_left_encoded : String := "00000002"
theorem small_10073239_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10073239_left_root small_10073239_left_fuel small_10073239_left_count small_10073239_left_encoded = true := by
  decide +kernel
theorem small_10073239_left_covered : CoveredBy scale carrier boxes small_10073239_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10073239_left_root small_10073239_left_fuel small_10073239_left_count small_10073239_left_encoded small_10073239_left_checked

theorem cover_10073239 : CoveredBy scale carrier boxes root_10073239 := by
  apply coveredBy_split_literal root_10073239 small_10073239_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.root_10073245 coord2 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_10073239_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.cover_10073245
#print axioms cover_10073239

def root_10073131 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10073131_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10073131_left_fuel : Nat := 16
def small_10073131_left_count : Nat := 51
def small_10073131_left_encoded : String := "0F34D0FA0CFD9C070F34D0FC00000007000000030F350CFC00000003045489FF1386ACFE000000040C9A86FC0F878D07028001000000000700000007000000030F875107000000030280010013D7B10100000000022A458313E1C502000000010AD357850000000510D13CFA00000002067ECE7F000000050000000713E201020AD3578510D100FA000000070000000210D13CFA00000002067ECE7F12EA94FE0000000400000005000000070000000113D7ED01022A45830000000500000008000000000000000700000002"
theorem small_10073131_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10073131_left_root small_10073131_left_fuel small_10073131_left_count small_10073131_left_encoded = true := by
  decide +kernel
theorem small_10073131_left_covered : CoveredBy scale carrier boxes small_10073131_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10073131_left_root small_10073131_left_fuel small_10073131_left_count small_10073131_left_encoded small_10073131_left_checked

theorem cover_10073131 : CoveredBy scale carrier boxes root_10073131 := by
  apply coveredBy_split_literal root_10073131 small_10073131_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.root_10073239 coord2 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_10073131_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.cover_10073239
#print axioms cover_10073131

def root_10073125 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10073125_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10073125_left_fuel : Nat := 1
def small_10073125_left_count : Nat := 1
def small_10073125_left_encoded : String := "00000001"
theorem small_10073125_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10073125_left_root small_10073125_left_fuel small_10073125_left_count small_10073125_left_encoded = true := by
  decide +kernel
theorem small_10073125_left_covered : CoveredBy scale carrier boxes small_10073125_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10073125_left_root small_10073125_left_fuel small_10073125_left_count small_10073125_left_encoded small_10073125_left_checked

theorem cover_10073125 : CoveredBy scale carrier boxes root_10073125 := by
  apply coveredBy_split_literal root_10073125 small_10073125_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.root_10073131 coord1 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_10073125_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.cover_10073131
#print axioms cover_10073125

def root_10073124 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10073124_right_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10073124_right_fuel : Nat := 27
def small_10073124_right_count : Nat := 373
def small_10073124_right_encoded : String := "1386AD020CFD9C050F34D0FA0CFD9C070F34D0FC045489FF1386ACFE0000000402800100000000070000000700000007000000030F350CFC00000003045489FF1386ACFE000000040C9A86FC0F878D070280010013D7B10100000000067ECE8312EA5902000000010AD3578500000007000000070000000800000008000000030F875107000000030000000800000008000000020F350CFA000000020CFD9C070F34D0FC045489FF1386ACFE000000040C9A86FA0F878D050280010013D7B10100000000067ECE8312EA5902000000010AD35787000000070000000712EA9502000000090000000113D7ED01067ECE8312EA5902000000010AD357870000000610D13CFC00000003067ECE7F00000006000000070000000600000000000000020F87510500000002028001000000000900000006138670FE0C9A86FA0F878D0500000007000000020000000900000004000000030F350CFC00000003045489FF1386ACFE000000040C9A86FA0F878D050C9A86FC0F878D070280010013D7B10100000000067ECE8312EA590200000001067ECE7F12EA94FE000000040DE7C9FA0E6015050DE7C9FC0E60150700000007000000030E5FD907000000030140010013F5D901000000000569AC431340D50200000001000000070000000800000008000000020E5FD905000000020000000912EA58FE0DE7C9FA00000008000000090000000412EA9502067ECE7F12EA94FE000000040DE7C9FA0000000800000009000000080000000113D7ED01067ECE8312EA590200000001067ECE7F12EA94FE000000040DE7C9FA000000080E5FD905000000020DE7C9FC000000060E5FD9070000000300000008000000080000000800000000000000030F875107000000030280010013D7B10100000000067ECE8312EA590200000001067ECE7F12EA94FE000000040DE7C9FA0E6015050B4D43FC10804D07014001000000000A000000080000000300000008000000020E5FD905000000020B4D43FC10804D07014001000000000913F615010569AC431340D502000000010793F0BF0000000A000000080000000800000000000000030000000A12EA58FE0DE7C9FA000000080E5FD905000000020B4D43FC10804D070000000800000003000000080000000412EA9502067ECE7F12EA94FE000000040DE7C9FA000000080E5FD9050000000200000009000000080000000113D7ED01067ECE8312EA590200000001067ECE7F12EA94FE000000040DE7C9FA000000080E5FD905000000020B4D43FC10804D07000000080000000300000008000000080000000800000000000000020F875105000000020C9A86FC0F878D07028001000000000913D7ED01067ECE8312EA590200000001067ECE7F12EA94FE000000040B4D43FA0000000600000006000000090000000600000000000000030F875107000000030280010013D7B10100000000067ECE8312EA590200000001067ECE7F12EA94FE0000000400000009000000090000000913D7ED01067ECE8312EA590200000001067ECE7F12EA94FE000000040B4D43FA10804D050B4D43FC10804D0703C0010013A5110100000000000000090000000600000003108011070000000303C0010013A51101000000000569AC431340D502000000010793F0BF0000000A000000080000000813A54D010569AC431340D502000000010000000800000008000000000000000210801105000000020B4D43FC10804D070000000600000003108011070000000303C001000000000913A54D010569AC431340D5020000000100000006000000050000000012EA58FE0B4D43FA10804D050B4D43FC10804D07000000080000000300000008000000021080110500000002000000050000000412EA9502067ECE7F12EA94FE000000040B4D43FA10804D050B4D43FC00000006000000080000000200000009000000050000000100000000138670FE0C9A86FA0F878D050C9A86FC0F878D07000000080000000300000008000000020F875105000000020C9A86FC0F878D0700000009000000030F87510700000003000000050000000400000001"
theorem small_10073124_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10073124_right_root small_10073124_right_fuel small_10073124_right_count small_10073124_right_encoded = true := by
  decide +kernel
theorem small_10073124_right_covered : CoveredBy scale carrier boxes small_10073124_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10073124_right_root small_10073124_right_fuel small_10073124_right_count small_10073124_right_encoded small_10073124_right_checked

theorem cover_10073124 : CoveredBy scale carrier boxes root_10073124 := by
  apply coveredBy_split_literal root_10073124 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.root_10073125 small_10073124_right_root coord1 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.cover_10073125
  · exact small_10073124_right_covered
#print axioms cover_10073124

def root_10073118 : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10073118_left_root : ZRayBox := fun j => (#[⟨⟨(0), (4194304)⟩, ⟨(14529024), (16243968)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10073118_left_fuel : Nat := 1
def small_10073118_left_count : Nat := 1
def small_10073118_left_encoded : String := "00000000"
theorem small_10073118_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10073118_left_root small_10073118_left_fuel small_10073118_left_count small_10073118_left_encoded = true := by
  decide +kernel
theorem small_10073118_left_covered : CoveredBy scale carrier boxes small_10073118_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10073118_left_root small_10073118_left_fuel small_10073118_left_count small_10073118_left_encoded small_10073118_left_checked

theorem cover_10073118 : CoveredBy scale carrier boxes root_10073118 := by
  apply coveredBy_split_literal root_10073118 small_10073118_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.root_10073124 coord0 true (16243968)
  · decide +kernel
  · decide +kernel
  · exact small_10073118_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.cover_10073124
#print axioms cover_10073118

def root_10073117 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10073117 : CoveredBy scale carrier boxes root_10073117 := by
  apply coveredBy_split_literal root_10073117 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.root_10073118 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3777.root coord0 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.cover_10073118
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3777.covered
#print axioms cover_10073117

def root_10073112 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10073112_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10073112_right_fuel : Nat := 1
def small_10073112_right_count : Nat := 1
def small_10073112_right_encoded : String := "00000004"
theorem small_10073112_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10073112_right_root small_10073112_right_fuel small_10073112_right_count small_10073112_right_encoded = true := by
  decide +kernel
theorem small_10073112_right_covered : CoveredBy scale carrier boxes small_10073112_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10073112_right_root small_10073112_right_fuel small_10073112_right_count small_10073112_right_encoded small_10073112_right_checked

theorem cover_10073112 : CoveredBy scale carrier boxes root_10073112 := by
  apply coveredBy_split_literal root_10073112 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.root_10073117 small_10073112_right_root coord4 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.cover_10073117
  · exact small_10073112_right_covered
#print axioms cover_10073112

def root_10071242 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10071242 : CoveredBy scale carrier boxes root_10071242 := by
  apply coveredBy_split_literal root_10071242 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3775.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.root_10073112 coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3775.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.cover_10073112
#print axioms cover_10071242

def root_10071236 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10071236_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10071236_left_fuel : Nat := 1
def small_10071236_left_count : Nat := 1
def small_10071236_left_encoded : String := "00000003"
theorem small_10071236_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10071236_left_root small_10071236_left_fuel small_10071236_left_count small_10071236_left_encoded = true := by
  decide +kernel
theorem small_10071236_left_covered : CoveredBy scale carrier boxes small_10071236_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10071236_left_root small_10071236_left_fuel small_10071236_left_count small_10071236_left_encoded small_10071236_left_checked

theorem cover_10071236 : CoveredBy scale carrier boxes root_10071236 := by
  apply coveredBy_split_literal root_10071236 small_10071236_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.root_10071242 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_10071236_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.cover_10071242
#print axioms cover_10071236

def root_10071088 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10071088_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10071088_left_fuel : Nat := 15
def small_10071088_left_count : Nat := 71
def small_10071088_left_encoded : String := "120700FC08A912FF12073CFE0000000405000100135D45010000000004548A03000000051386AD020CFD9C05000000050F350CFA00000002000000050000000100000005120700FE05000100135D45010000000004548A0313867102000000010CFD9C0500000007000000071386AD020CFD9C05000000070F350CFA0000000204548A07000000071386ACFC00000003045489FF1386ACFE000000040C9A86FA00000006000000060000000700000001135D810104548A0313867102000000010CFD9C05000000050F350CFA0000000204548A07000000051386ACFC00000003045489FF00000005000000071386AD020CFD9C050F34D0FA00000007000000020F350CFA000000020000000600000001000000000000000400000003"
theorem small_10071088_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10071088_left_root small_10071088_left_fuel small_10071088_left_count small_10071088_left_encoded = true := by
  decide +kernel
theorem small_10071088_left_covered : CoveredBy scale carrier boxes small_10071088_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10071088_left_root small_10071088_left_fuel small_10071088_left_count small_10071088_left_encoded small_10071088_left_checked

theorem cover_10071088 : CoveredBy scale carrier boxes root_10071088 := by
  apply coveredBy_split_literal root_10071088 small_10071088_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.root_10071236 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_10071088_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.cover_10071236
#print axioms cover_10071088

def root_10071082 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10071082_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10071082_left_fuel : Nat := 1
def small_10071082_left_count : Nat := 1
def small_10071082_left_encoded : String := "00000002"
theorem small_10071082_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10071082_left_root small_10071082_left_fuel small_10071082_left_count small_10071082_left_encoded = true := by
  decide +kernel
theorem small_10071082_left_covered : CoveredBy scale carrier boxes small_10071082_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10071082_left_root small_10071082_left_fuel small_10071082_left_count small_10071082_left_encoded small_10071082_left_checked

theorem cover_10071082 : CoveredBy scale carrier boxes root_10071082 := by
  apply coveredBy_split_literal root_10071082 small_10071082_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.root_10071088 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_10071082_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.cover_10071088
#print axioms cover_10071082

def root_10070916 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10070916_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10070916_left_fuel : Nat := 15
def small_10070916_left_count : Nat := 81
def small_10070916_left_encoded : String := "120700FA08A91307120700FC08A912FF00000005000000070000000312073CFC0000000308A912FF12073CFE0000000405000100135D45010000000004548A03000000051386AD0204548A05000000051386ACFA000000020CFD9C07000000050F350CFC00000003000000050000000100000005120700FE05000100135D45010000000004548A03138671020000000104548A0500000007000000071386AD0204548A05000000071386ACFA000000020CFD9C07000000070F350CFC00000003045489FF000000080000000700000001135D810104548A03138671020000000104548A05000000051386ACFA000000020CFD9C0700000005000000091386AD0204548A05138670FA0CFD9C070000000500000009000000021386ACFA000000020CFD9C07000000080F350CFC000000030000000800000001000000000000000400000002"
theorem small_10070916_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10070916_left_root small_10070916_left_fuel small_10070916_left_count small_10070916_left_encoded = true := by
  decide +kernel
theorem small_10070916_left_covered : CoveredBy scale carrier boxes small_10070916_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10070916_left_root small_10070916_left_fuel small_10070916_left_count small_10070916_left_encoded small_10070916_left_checked

theorem cover_10070916 : CoveredBy scale carrier boxes root_10070916 := by
  apply coveredBy_split_literal root_10070916 small_10070916_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.root_10071082 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_10070916_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.cover_10071082
#print axioms cover_10070916

def root_10070910 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10070910_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10070910_left_fuel : Nat := 1
def small_10070910_left_count : Nat := 1
def small_10070910_left_encoded : String := "00000001"
theorem small_10070910_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10070910_left_root small_10070910_left_fuel small_10070910_left_count small_10070910_left_encoded = true := by
  decide +kernel
theorem small_10070910_left_covered : CoveredBy scale carrier boxes small_10070910_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10070910_left_root small_10070910_left_fuel small_10070910_left_count small_10070910_left_encoded small_10070910_left_checked

theorem cover_10070910 : CoveredBy scale carrier boxes root_10070910 := by
  apply coveredBy_split_literal root_10070910 small_10070910_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.root_10070916 coord1 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_10070910_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.cover_10070916
#print axioms cover_10070910

def root_10070909 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10070909 : CoveredBy scale carrier boxes root_10070909 := by
  apply coveredBy_split_literal root_10070909 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.root_10070910 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3778.root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.cover_10070910
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3778.covered
#print axioms cover_10070909

def root_10070903 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10070903_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10070903_left_fuel : Nat := 1
def small_10070903_left_count : Nat := 1
def small_10070903_left_encoded : String := "00000004"
theorem small_10070903_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10070903_left_root small_10070903_left_fuel small_10070903_left_count small_10070903_left_encoded = true := by
  decide +kernel
theorem small_10070903_left_covered : CoveredBy scale carrier boxes small_10070903_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10070903_left_root small_10070903_left_fuel small_10070903_left_count small_10070903_left_encoded small_10070903_left_checked

theorem cover_10070903 : CoveredBy scale carrier boxes root_10070903 := by
  apply coveredBy_split_literal root_10070903 small_10070903_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.root_10070909 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_10070903_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.cover_10070909
#print axioms cover_10070903

def root_10070902 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10070902_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10070902_right_fuel : Nat := 24
def small_10070902_right_count : Nat := 327
def small_10070902_right_encoded : String := "1151E8FF08A91303120701020000000108A913050000000512073CFA0000000208A913070000000512073CFC0000000305000100135D450100000000050000FE135D80FF0000000404548A03000000051386AD020CFD9C05000000050F350CFA000000020CFD9C07000000050F350CFC000000030C9A86FA0000000A0F875105000000020000000A00000001135D44FF04548A03000000051386AD020CFD9C05000000050F350CFA000000020CFD9C07000000050F350CFC000000030000000A0000000100000004135D8101050000FE135D80FF0000000404548A03000000051386AD020CFD9C05000000050F350CFA000000020CFD9C07000000050F350CFC000000030C9A86FA0F878D0500000005000000020F875105000000020C9A86FC0F878D0700000005000000030F875107000000030780010000000007128A7D01000000070000000000000001135D44FF04548A0313867102000000010CFD9C05000000050F350CFA000000020CFD9C07000000050F350CFC000000030C9A86FA000000050F875105000000020C9A86FC000000050F875107000000030000000A1386AD020CFD9C05000000050F350CFA000000020CFD9C07000000050F350CFC000000030C9A86FA0F878D050C9A86FC000000050000000A000000020F875105000000020C9A86FC0F878D07078001000000000500000006000000030000000A00000001000000040000000012073D0208A91305120700FA08A913070000000512073CFC0000000305000100135D450100000000050000FE135D80FF000000040CFD9C03000000050F350D0204548A05000000051386ACFA000000020CFD9C07000000050F350CFC00000003000000050000000100000005135D8101050000FE00000005135D44FF0000000500000004000000000000000212073CFA0000000208A91307120700FC05000100135D450100000000050000FE0000000600000005000000060000000312073CFC0000000305000100135D450100000000050000FE135D80FF000000040CFD9C030F34D102000000010CFD9C050F34D0FA00000005000000020F350CFA000000020CFD9C070F34D0FC00000005000000030F350CFC000000030C9A86FA0000000A0F87510500000002000000070F350D020CFD9C050F34D0FA0CFD9C07000000050F350CFC000000030000000A000000020F350CFA000000020CFD9C07000000060F350CFC000000030000000700000001135D44FF0CFD9C030F34D102000000010CFD9C050F34D0FA00000005000000020F350CFA000000020CFD9C070F34D0FC00000005000000030F350CFC000000030000000A0F350D020CFD9C050F34D0FA0CFD9C07000000050000000A000000020F350CFA000000020CFD9C07000000060F350CFC00000003000000070000000100000004135D8101050000FE135D80FF000000040CFD9C030F34D102000000010CFD9C050F34D0FA00000005000000020F350CFA000000020CFD9C07000000060F350CFC000000030C9A86FA0F878D050C9A86FC000000060F8751070000000300000007000000020F87510500000002000000060F350D020CFD9C050F34D0FA00000006000000020000000600000001135D44FF0CFD9C030F34D102000000010CFD9C050F34D0FA00000005000000020F350CFA000000020CFD9C07000000060F350CFC000000030C9A86FA0F878D050C9A86FC000000060000000A000000020F875105000000020C9A86FC00000006000000070F350D020CFD9C050F34D0FA0000000600000002000000060000000100000004000000000000000100000004"
theorem small_10070902_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10070902_right_root small_10070902_right_fuel small_10070902_right_count small_10070902_right_encoded = true := by
  decide +kernel
theorem small_10070902_right_covered : CoveredBy scale carrier boxes small_10070902_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10070902_right_root small_10070902_right_fuel small_10070902_right_count small_10070902_right_encoded small_10070902_right_checked

theorem cover_10070902 : CoveredBy scale carrier boxes root_10070902 := by
  apply coveredBy_split_literal root_10070902 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.root_10070903 small_10070902_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.cover_10070903
  · exact small_10070902_right_covered
#print axioms cover_10070902

def root_10070897 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10070897_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10070897_right_fuel : Nat := 1
def small_10070897_right_count : Nat := 1
def small_10070897_right_encoded : String := "00000003"
theorem small_10070897_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10070897_right_root small_10070897_right_fuel small_10070897_right_count small_10070897_right_encoded = true := by
  decide +kernel
theorem small_10070897_right_covered : CoveredBy scale carrier boxes small_10070897_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10070897_right_root small_10070897_right_fuel small_10070897_right_count small_10070897_right_encoded small_10070897_right_checked

theorem cover_10070897 : CoveredBy scale carrier boxes root_10070897 := by
  apply coveredBy_split_literal root_10070897 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.root_10070902 small_10070897_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237.cover_10070902
  · exact small_10070897_right_covered
#print axioms cover_10070897

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0237
