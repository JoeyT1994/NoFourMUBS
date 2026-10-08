import TaoBundleAssembly0670
import TaoBundleAssembly0671
import TaoBundleAssembly0672
import TaoBundleChunkBatch0933
import TaoBundleChunkBatch0935
import TaoBundleChunkBatch0936
import TaoBundleChunkBatch0937
import TaoBundleChunkBatch0938
import TaoBundleChunkBatch0939
import TaoBundleChunkBatch0940
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673
def root_9978725 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9978725_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9978725_left_fuel : Nat := 18
def small_9978725_left_count : Nat := 169
def small_9978725_left_encoded : String := "12073D06050000FA135D80FB00000002050000FE135D80FF000000040CFD9C010F34D100000000000CFD9C030F34D102000000010CFD9BFD00000008000000080F350D020CFD9BFD0000000A0F34D106000000030000000A000000010F350D000CFD9C030F34D102000000010CFD9BFD000000080F34D10600000003000000080F350D020CFD9BFD0F350D060C9A8700000000080000000A000000030F34D106000000030C9A87000F875101000000000C9A87020F87510300000001078000FA00000006000000090F878D03078000FA00000008128A40FB0000000700000002000000010F878D010C9A87020F87510300000001078000FA000000060000000A0F878D03078000FA128A7CFB00000002000000080000000A00000001000000000000000100000000135D44FF0CFD9C010F34D100000000000CFD9C030F34D10200000001000000050F350D020CFD9BFD0000000A0F34D106000000030C9A87020F875103000000010000000600000005000000010F350D000CFD9C030F34D10200000001000000080F350D020CFD9BFD000000080F34D106000000030C9A87000000000800000008000000010000000000000004135D44FB050000FE135D80FF000000040CFD9C010F34D100000000000000000A0F350D000CFD9C030F34D102000000010CFD9BFD000000080F34D106000000030C9A87000F8751010000000000000007000000050F350D020CFD9BFD0000000A0F34D106000000030C9A87000F875101000000000000000A0000000A0000000100000000135D44FF0CFD9C010F34D100000000000000000A0F350D000CFD9C030F34D10200000001000000080F350D020CFD9BFD000000080F34D106000000030C9A87000F875101000000000C9A87020000000A00000005000000050000000100000000000000040000000200000003"
theorem small_9978725_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9978725_left_root small_9978725_left_fuel small_9978725_left_count small_9978725_left_encoded = true := by
  decide +kernel
theorem small_9978725_left_covered : CoveredBy scale carrier boxes small_9978725_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9978725_left_root small_9978725_left_fuel small_9978725_left_count small_9978725_left_encoded small_9978725_left_checked

theorem cover_9978725 : CoveredBy scale carrier boxes root_9978725 := by
  apply coveredBy_split_literal root_9978725 small_9978725_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0672.root_9979087 coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9978725_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0672.cover_9979087
#print axioms cover_9978725

def root_9978720 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9978720_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9978720_right_fuel : Nat := 1
def small_9978720_right_count : Nat := 1
def small_9978720_right_encoded : String := "00000001"
theorem small_9978720_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9978720_right_root small_9978720_right_fuel small_9978720_right_count small_9978720_right_encoded = true := by
  decide +kernel
theorem small_9978720_right_covered : CoveredBy scale carrier boxes small_9978720_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9978720_right_root small_9978720_right_fuel small_9978720_right_count small_9978720_right_encoded small_9978720_right_checked

theorem cover_9978720 : CoveredBy scale carrier boxes root_9978720 := by
  apply coveredBy_split_literal root_9978720 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.root_9978725 small_9978720_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.cover_9978725
  · exact small_9978720_right_covered
#print axioms cover_9978720

def root_9978552 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9978552_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9978552_left_fuel : Nat := 20
def small_9978552_left_count : Nat := 79
def small_9978552_left_encoded : String := "120701020000000108A912FD12073D06050000FA135D80FB00000002050000FE135D80FF000000040CFD9C01000000080F350D00000000080000000000000008135D44FB050000FE135D80FF000000040CFD9C01000000050F350D0004548A03000000051386AD020CFD9BFD000000050F34D106000000030000000500000001000000000000000500000002000000031207010600000003050000FA135D80FB00000002050000FE135D80FF000000040CFD9C010F34D10000000000000000050F350D0004548A031386710200000001000000051386AD02045489FD1386AD060C9A870000000008000000050000000313867106000000030C9A87000F87510100000000078000FA128A7CFB00000002078000FE128A7CFF000000040000000800000005000000050000000500000001000000000000000500000005"
theorem small_9978552_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9978552_left_root small_9978552_left_fuel small_9978552_left_count small_9978552_left_encoded = true := by
  decide +kernel
theorem small_9978552_left_covered : CoveredBy scale carrier boxes small_9978552_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9978552_left_root small_9978552_left_fuel small_9978552_left_count small_9978552_left_encoded small_9978552_left_checked

theorem cover_9978552 : CoveredBy scale carrier boxes root_9978552 := by
  apply coveredBy_split_literal root_9978552 small_9978552_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.root_9978720 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9978552_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.cover_9978720
#print axioms cover_9978552

def root_9978547 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9978547_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9978547_right_fuel : Nat := 1
def small_9978547_right_count : Nat := 1
def small_9978547_right_encoded : String := "00000000"
theorem small_9978547_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9978547_right_root small_9978547_right_fuel small_9978547_right_count small_9978547_right_encoded = true := by
  decide +kernel
theorem small_9978547_right_covered : CoveredBy scale carrier boxes small_9978547_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9978547_right_root small_9978547_right_fuel small_9978547_right_count small_9978547_right_encoded small_9978547_right_checked

theorem cover_9978547 : CoveredBy scale carrier boxes root_9978547 := by
  apply coveredBy_split_literal root_9978547 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.root_9978552 small_9978547_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.cover_9978552
  · exact small_9978547_right_covered
#print axioms cover_9978547

def root_9978379 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9978379_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9978379_left_fuel : Nat := 22
def small_9978379_left_count : Nat := 79
def small_9978379_left_encoded : String := "120701000000000008A9130312070102000000010000000512073D0208A912FD12073D06050000FA135D80FB00000002050000FE135D80FF0000000404548A010000000A0000000A135D44FF04548A01000000051386AD000CFD9C03000000050F350D020CFD9BFD000000050F34D10600000003000000050000000100000000000000040000000A000000031207010600000003050000FA135D80FB00000002050000FE135D80FF0000000404548A011386710000000000000000051386AD000CFD9C030F34D10200000001000000050F350D02045489FD1386AD060C9A87020000000A000000050000000313867106000000030C9A87020F87510300000001078000FA128A7CFB00000002078000FE128A7CFF000000040000000A0000000500000005000000050000000100000000000000050000000500000001"
theorem small_9978379_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9978379_left_root small_9978379_left_fuel small_9978379_left_count small_9978379_left_encoded = true := by
  decide +kernel
theorem small_9978379_left_covered : CoveredBy scale carrier boxes small_9978379_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9978379_left_root small_9978379_left_fuel small_9978379_left_count small_9978379_left_encoded small_9978379_left_checked

theorem cover_9978379 : CoveredBy scale carrier boxes root_9978379 := by
  apply coveredBy_split_literal root_9978379 small_9978379_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.root_9978547 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_9978379_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.cover_9978547
#print axioms cover_9978379

def root_9978374 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9978374_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9978374_right_fuel : Nat := 1
def small_9978374_right_count : Nat := 1
def small_9978374_right_encoded : String := "00000004"
theorem small_9978374_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9978374_right_root small_9978374_right_fuel small_9978374_right_count small_9978374_right_encoded = true := by
  decide +kernel
theorem small_9978374_right_covered : CoveredBy scale carrier boxes small_9978374_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9978374_right_root small_9978374_right_fuel small_9978374_right_count small_9978374_right_encoded small_9978374_right_checked

theorem cover_9978374 : CoveredBy scale carrier boxes root_9978374 := by
  apply coveredBy_split_literal root_9978374 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.root_9978379 small_9978374_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.cover_9978379
  · exact small_9978374_right_covered
#print axioms cover_9978374

def root_9973756 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9973756 : CoveredBy scale carrier boxes root_9973756 := by
  apply coveredBy_split_literal root_9973756 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0671.root_9973757 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.root_9978374 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0671.cover_9973757
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.cover_9978374
#print axioms cover_9973756

def root_9973750 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9973750_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9973750_left_fuel : Nat := 1
def small_9973750_left_count : Nat := 1
def small_9973750_left_encoded : String := "00000003"
theorem small_9973750_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9973750_left_root small_9973750_left_fuel small_9973750_left_count small_9973750_left_encoded = true := by
  decide +kernel
theorem small_9973750_left_covered : CoveredBy scale carrier boxes small_9973750_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9973750_left_root small_9973750_left_fuel small_9973750_left_count small_9973750_left_encoded small_9973750_left_checked

theorem cover_9973750 : CoveredBy scale carrier boxes root_9973750 := by
  apply coveredBy_split_literal root_9973750 small_9973750_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.root_9973756 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_9973750_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.cover_9973756
#print axioms cover_9973750

def root_9973628 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9973628_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9973628_left_fuel : Nat := 15
def small_9973628_left_count : Nat := 57
def small_9973628_left_encoded : String := "1151E8FD0A0000FE115224FF0000000408A9130112070100000000000000000A12073D0008A9130312070102000000010000000712073D0208A912FF12073CFE00000004050000FA135D80FB00000002050001060000000A135D80FD000000030CFD9C010000000A000000070000000A0000000700000001000000001151E8FF08A9130112070100000000000000000A12073D0008A9130312070102000000010000000812073D02050000FA135D80FB000000020500010600000008135D80FD00000003050000FE00000008000000080000000A00000001000000000000000400000003"
theorem small_9973628_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9973628_left_root small_9973628_left_fuel small_9973628_left_count small_9973628_left_encoded = true := by
  decide +kernel
theorem small_9973628_left_covered : CoveredBy scale carrier boxes small_9973628_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9973628_left_root small_9973628_left_fuel small_9973628_left_count small_9973628_left_encoded small_9973628_left_checked

theorem cover_9973628 : CoveredBy scale carrier boxes root_9973628 := by
  apply coveredBy_split_literal root_9973628 small_9973628_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.root_9973750 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_9973628_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.cover_9973750
#print axioms cover_9973628

def root_9973623 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9973623_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9973623_right_fuel : Nat := 1
def small_9973623_right_count : Nat := 1
def small_9973623_right_encoded : String := "00000002"
theorem small_9973623_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9973623_right_root small_9973623_right_fuel small_9973623_right_count small_9973623_right_encoded = true := by
  decide +kernel
theorem small_9973623_right_covered : CoveredBy scale carrier boxes small_9973623_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9973623_right_root small_9973623_right_fuel small_9973623_right_count small_9973623_right_encoded small_9973623_right_checked

theorem cover_9973623 : CoveredBy scale carrier boxes root_9973623 := by
  apply coveredBy_split_literal root_9973623 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.root_9973628 small_9973623_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.cover_9973628
  · exact small_9973623_right_covered
#print axioms cover_9973623

def root_9950685 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9950685 : CoveredBy scale carrier boxes root_9950685 := by
  apply coveredBy_split_literal root_9950685 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0671.root_9950686 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.root_9973623 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0671.cover_9950686
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.cover_9973623
#print axioms cover_9950685

def root_9950680 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9950680_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9950680_right_fuel : Nat := 1
def small_9950680_right_count : Nat := 1
def small_9950680_right_encoded : String := "00000001"
theorem small_9950680_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9950680_right_root small_9950680_right_fuel small_9950680_right_count small_9950680_right_encoded = true := by
  decide +kernel
theorem small_9950680_right_covered : CoveredBy scale carrier boxes small_9950680_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9950680_right_root small_9950680_right_fuel small_9950680_right_count small_9950680_right_encoded small_9950680_right_checked

theorem cover_9950680 : CoveredBy scale carrier boxes root_9950680 := by
  apply coveredBy_split_literal root_9950680 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.root_9950685 small_9950680_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.cover_9950685
  · exact small_9950680_right_covered
#print axioms cover_9950680

def root_9947888 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9947888 : CoveredBy scale carrier boxes root_9947888 := by
  apply coveredBy_split_literal root_9947888 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3729.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.root_9950680 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3729.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.cover_9950680
#print axioms cover_9947888

def root_9947883 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9947883_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9947883_right_fuel : Nat := 1
def small_9947883_right_count : Nat := 1
def small_9947883_right_encoded : String := "00000000"
theorem small_9947883_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9947883_right_root small_9947883_right_fuel small_9947883_right_count small_9947883_right_encoded = true := by
  decide +kernel
theorem small_9947883_right_covered : CoveredBy scale carrier boxes small_9947883_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9947883_right_root small_9947883_right_fuel small_9947883_right_count small_9947883_right_encoded small_9947883_right_checked

theorem cover_9947883 : CoveredBy scale carrier boxes root_9947883 := by
  apply coveredBy_split_literal root_9947883 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.root_9947888 small_9947883_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.cover_9947888
  · exact small_9947883_right_covered
#print axioms cover_9947883

def root_9944479 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9944479 : CoveredBy scale carrier boxes root_9944479 := by
  apply coveredBy_split_literal root_9944479 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0670.root_9944480 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.root_9947883 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0670.cover_9944480
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.cover_9947883
#print axioms cover_9944479

def root_9944478 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9944478 : CoveredBy scale carrier boxes root_9944478 := by
  apply coveredBy_split_literal root_9944478 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.root_9944479 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3740.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.cover_9944479
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3740.covered
#print axioms cover_9944478

def root_9988711 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9988711 : CoveredBy scale carrier boxes root_9988711 := by
  apply coveredBy_split_literal root_9988711 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3742.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3743.root coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3742.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3743.covered
#print axioms cover_9988711

def root_9988706 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9988706_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9988706_right_fuel : Nat := 1
def small_9988706_right_count : Nat := 1
def small_9988706_right_encoded : String := "00000000"
theorem small_9988706_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9988706_right_root small_9988706_right_fuel small_9988706_right_count small_9988706_right_encoded = true := by
  decide +kernel
theorem small_9988706_right_covered : CoveredBy scale carrier boxes small_9988706_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9988706_right_root small_9988706_right_fuel small_9988706_right_count small_9988706_right_encoded small_9988706_right_checked

theorem cover_9988706 : CoveredBy scale carrier boxes root_9988706 := by
  apply coveredBy_split_literal root_9988706 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.root_9988711 small_9988706_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.cover_9988711
  · exact small_9988706_right_covered
#print axioms cover_9988706

def root_9986980 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9986980 : CoveredBy scale carrier boxes root_9986980 := by
  apply coveredBy_split_literal root_9986980 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3741.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.root_9988706 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3741.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.cover_9988706
#print axioms cover_9986980

def root_9993019 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9993019 : CoveredBy scale carrier boxes root_9993019 := by
  apply coveredBy_split_literal root_9993019 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3744.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3745.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3744.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3745.covered
#print axioms cover_9993019

def root_9986979 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9986979 : CoveredBy scale carrier boxes root_9986979 := by
  apply coveredBy_split_literal root_9986979 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.root_9986980 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.root_9993019 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.cover_9986980
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.cover_9993019
#print axioms cover_9986979

def root_9944477 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9944477 : CoveredBy scale carrier boxes root_9944477 := by
  apply coveredBy_split_literal root_9944477 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.root_9944478 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.root_9986979 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.cover_9944478
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.cover_9986979
#print axioms cover_9944477

def root_9996312 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9996312 : CoveredBy scale carrier boxes root_9996312 := by
  apply coveredBy_split_literal root_9996312 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3746.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3747.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3746.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3747.covered
#print axioms cover_9996312

def root_9996306 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9996306_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9996306_left_fuel : Nat := 1
def small_9996306_left_count : Nat := 1
def small_9996306_left_encoded : String := "00000001"
theorem small_9996306_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9996306_left_root small_9996306_left_fuel small_9996306_left_count small_9996306_left_encoded = true := by
  decide +kernel
theorem small_9996306_left_covered : CoveredBy scale carrier boxes small_9996306_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9996306_left_root small_9996306_left_fuel small_9996306_left_count small_9996306_left_encoded small_9996306_left_checked

theorem cover_9996306 : CoveredBy scale carrier boxes root_9996306 := by
  apply coveredBy_split_literal root_9996306 small_9996306_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.root_9996312 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_9996306_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.cover_9996312
#print axioms cover_9996306

def root_9999882 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9999882 : CoveredBy scale carrier boxes root_9999882 := by
  apply coveredBy_split_literal root_9999882 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3748.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3749.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3748.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3749.covered
#print axioms cover_9999882

def root_9999877 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9999877_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9999877_right_fuel : Nat := 1
def small_9999877_right_count : Nat := 1
def small_9999877_right_encoded : String := "00000001"
theorem small_9999877_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9999877_right_root small_9999877_right_fuel small_9999877_right_count small_9999877_right_encoded = true := by
  decide +kernel
theorem small_9999877_right_covered : CoveredBy scale carrier boxes small_9999877_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9999877_right_root small_9999877_right_fuel small_9999877_right_count small_9999877_right_encoded small_9999877_right_checked

theorem cover_9999877 : CoveredBy scale carrier boxes root_9999877 := by
  apply coveredBy_split_literal root_9999877 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.root_9999882 small_9999877_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.cover_9999882
  · exact small_9999877_right_covered
#print axioms cover_9999877

def root_9996305 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_9996305 : CoveredBy scale carrier boxes root_9996305 := by
  apply coveredBy_split_literal root_9996305 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.root_9996306 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.root_9999877 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.cover_9996306
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.cover_9999877
#print axioms cover_9996305

def root_9996299 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9996299_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_9996299_left_fuel : Nat := 1
def small_9996299_left_count : Nat := 1
def small_9996299_left_encoded : String := "00000000"
theorem small_9996299_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_9996299_left_root small_9996299_left_fuel small_9996299_left_count small_9996299_left_encoded = true := by
  decide +kernel
theorem small_9996299_left_covered : CoveredBy scale carrier boxes small_9996299_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_9996299_left_root small_9996299_left_fuel small_9996299_left_count small_9996299_left_encoded small_9996299_left_checked

theorem cover_9996299 : CoveredBy scale carrier boxes root_9996299 := by
  apply coveredBy_split_literal root_9996299 small_9996299_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.root_9996305 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_9996299_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.cover_9996305
#print axioms cover_9996299

def root_10005408 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10005408 : CoveredBy scale carrier boxes root_10005408 := by
  apply coveredBy_split_literal root_10005408 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3750.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3751.root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3750.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3751.covered
#print axioms cover_10005408

def root_10005402 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10005402_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10005402_left_fuel : Nat := 1
def small_10005402_left_count : Nat := 1
def small_10005402_left_encoded : String := "00000001"
theorem small_10005402_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10005402_left_root small_10005402_left_fuel small_10005402_left_count small_10005402_left_encoded = true := by
  decide +kernel
theorem small_10005402_left_covered : CoveredBy scale carrier boxes small_10005402_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10005402_left_root small_10005402_left_fuel small_10005402_left_count small_10005402_left_encoded small_10005402_left_checked

theorem cover_10005402 : CoveredBy scale carrier boxes root_10005402 := by
  apply coveredBy_split_literal root_10005402 small_10005402_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.root_10005408 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_10005402_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.cover_10005408
#print axioms cover_10005402

def root_10016069 : ZRayBox := fun j => (#[⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10016069 : CoveredBy scale carrier boxes root_10016069 := by
  apply coveredBy_split_literal root_10016069 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3754.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3755.root coord1 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3754.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3755.covered
#print axioms cover_10016069

def root_10016064 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10016064_right_root : ZRayBox := fun j => (#[⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10016064_right_fuel : Nat := 1
def small_10016064_right_count : Nat := 1
def small_10016064_right_encoded : String := "00000000"
theorem small_10016064_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10016064_right_root small_10016064_right_fuel small_10016064_right_count small_10016064_right_encoded = true := by
  decide +kernel
theorem small_10016064_right_covered : CoveredBy scale carrier boxes small_10016064_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10016064_right_root small_10016064_right_fuel small_10016064_right_count small_10016064_right_encoded small_10016064_right_checked

theorem cover_10016064 : CoveredBy scale carrier boxes root_10016064 := by
  apply coveredBy_split_literal root_10016064 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.root_10016069 small_10016064_right_root coord0 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.cover_10016069
  · exact small_10016064_right_covered
#print axioms cover_10016064

def root_10013610 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10013610 : CoveredBy scale carrier boxes root_10013610 := by
  apply coveredBy_split_literal root_10013610 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3753.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.root_10016064 coord0 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3753.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.cover_10016064
#print axioms cover_10013610

def root_10013604 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10013604_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10013604_left_fuel : Nat := 1
def small_10013604_left_count : Nat := 1
def small_10013604_left_encoded : String := "00000004"
theorem small_10013604_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10013604_left_root small_10013604_left_fuel small_10013604_left_count small_10013604_left_encoded = true := by
  decide +kernel
theorem small_10013604_left_covered : CoveredBy scale carrier boxes small_10013604_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10013604_left_root small_10013604_left_fuel small_10013604_left_count small_10013604_left_encoded small_10013604_left_checked

theorem cover_10013604 : CoveredBy scale carrier boxes root_10013604 := by
  apply coveredBy_split_literal root_10013604 small_10013604_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.root_10013610 coord4 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_10013604_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.cover_10013610
#print axioms cover_10013604

def root_10013603 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10013603_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10013603_right_fuel : Nat := 14
def small_10013603_right_count : Nat := 87
def small_10013603_right_encoded : String := "120700FE0CFD9C010F34D100000000000CFD9C030F34D102000000010CFD9BFB0F350CFA0000000204548A071386710600000003045489FF1386ACFE000000040C9A86FA000000050F8750FB000000060000000200000006000000060F34D0FA04548A070000000500000009000000020F350D020CFD9BFB000000080F34D0FA04548A07000000051386AD06045489FF00000005000000080000000300000002000000010F350D000CFD9C030F34D102000000010CFD9BFB0F350CFA0000000204548A071386710600000003045489FF0000000500000006000000060F34D0FA04548A07000000051386AD06045489FF000000050000000600000003000000020F350D020CFD9BFB0F350CFA0000000204548A07138671060000000300000008000000080F34D0FA04548A07000000051386AD06045489FF00000005138670FE00000008000000040000000300000002000000010000000000000004"
theorem small_10013603_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10013603_right_root small_10013603_right_fuel small_10013603_right_count small_10013603_right_encoded = true := by
  decide +kernel
theorem small_10013603_right_covered : CoveredBy scale carrier boxes small_10013603_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10013603_right_root small_10013603_right_fuel small_10013603_right_count small_10013603_right_encoded small_10013603_right_checked

theorem cover_10013603 : CoveredBy scale carrier boxes root_10013603 := by
  apply coveredBy_split_literal root_10013603 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.root_10013604 small_10013603_right_root coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.cover_10013604
  · exact small_10013603_right_covered
#print axioms cover_10013603

def root_10013597 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10013597_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10013597_left_fuel : Nat := 1
def small_10013597_left_count : Nat := 1
def small_10013597_left_encoded : String := "00000003"
theorem small_10013597_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10013597_left_root small_10013597_left_fuel small_10013597_left_count small_10013597_left_encoded = true := by
  decide +kernel
theorem small_10013597_left_covered : CoveredBy scale carrier boxes small_10013597_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10013597_left_root small_10013597_left_fuel small_10013597_left_count small_10013597_left_encoded small_10013597_left_checked

theorem cover_10013597 : CoveredBy scale carrier boxes root_10013597 := by
  apply coveredBy_split_literal root_10013597 small_10013597_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.root_10013603 coord3 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_10013597_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.cover_10013603
#print axioms cover_10013597

def root_10013596 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10013596_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10013596_right_fuel : Nat := 22
def small_10013596_right_count : Nat := 349
def small_10013596_right_encoded : String := "12073D0608A912FF12073CFE000000040CFD9C010F34D100000000000CFD9C030F34D102000000010CFD9BFB000000090F34D0FA00000009000000020F350D020CFD9BFB0F350CFA000000020CFD9C070F34D106000000030CFD9BFF0F350CFE000000040C9A87020F875103000000010C9A86FA0F878CFB00000002000000070F8750FB0C9A86FE0000000500000007000000020F878D030C9A86FA000000090F8750FB0000000900000002000000010F34D0FE0C9A87020000000500000009000000040F350D060CFD9BFF000000090F34D0FE0000000900000004000000030F34D0FA0CFD9C070F34D106000000030CFD9BFF0F350CFE00000004000000070F34D0FE00000005000000040000000900000002000000010F350D000CFD9C030F34D102000000010CFD9BFB0F350CFA000000020CFD9C070F34D106000000030CFD9BFF0F350CFE000000040C9A87000F875101000000000C9A86FA0F878CFB000000020C9A86FE000000050F8750FF00000005000000040F8750FB00000006000000020F878D010C9A86FA000000090F8750FB0000000600000002000000000F34D0FE00000006000000040F350D060CFD9BFF0000000900000006000000030F34D0FA0CFD9C070F34D106000000030CFD9BFF0F350CFE000000040C9A870000000005000000090F34D0FE000000050000000400000009000000020F350D020CFD9BFB0F350CFA000000020CFD9C070F34D106000000030CFD9BFF0F350CFE000000040C9A87000F875101000000000C9A8702000000050F878D030C9A86FA000000050F8750FB0C9A86FE000000050F8750FF000000050000000400000002000000010F878D010C9A87020F875103000000010C9A86FA000000050F8750FB0C9A86FE000000050F8750FF0000000500000004000000020F878D030C9A86FA0F878CFB000000020C9A86FE000000050F8750FF00000005000000040F8750FB0C9A86FE000000050F8750FF00000009000000040000000200000001000000000F34D0FE0C9A8700000000050F878D010C9A8702000000050F878D03000000050000000100000000000000040F350D060CFD9BFF0F350CFE000000040C9A87000F875101000000000C9A8702000000050F878D030C9A86FA0000000500000006000000010F878D010C9A87020F875103000000010C9A86FA000000050F8750FB000000050000000200000009000000000F34D0FE0C9A8700000000050F878D010C9A870200000005000000060000000000000004000000030F34D0FA0CFD9C070F34D106000000030CFD9BFF0F350CFE000000040C9A8700000000050F878D010C9A8702000000050F878D030000000500000001000000000F34D0FE00000005000000040F350D060CFD9BFF0F350CFE000000040C9A8700000000050F878D0100000007000000000F34D0FE0C9A870000000005000000090000000400000003000000020000000100000000120700FE0CFD9C010F34D100000000000CFD9C030F34D10200000001000000090F350D020CFD9BFB0F350CFA000000020CFD9C070F34D1060000000300000008000000060F34D0FA0CFD9C070F34D10600000003045489FF00000005000000080000000900000002000000010F350D000CFD9C030F34D102000000010CFD9BFB000000060F34D0FA0CFD9C070F34D106000000030000000600000006000000020F350D020CFD9BFB0F350CFA000000020CFD9C070F34D1060000000300000008000000060F34D0FA0CFD9C070F34D10600000003045489FF1386ACFE000000040C9A8700000000050F878D010000000500000000138670FE00000008000000040F350D06045489FF1386ACFE000000040C9A87000F875101000000000C9A870200000005000000060000000900000006000000030000000200000001000000000000000400000003"
theorem small_10013596_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10013596_right_root small_10013596_right_fuel small_10013596_right_count small_10013596_right_encoded = true := by
  decide +kernel
theorem small_10013596_right_covered : CoveredBy scale carrier boxes small_10013596_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10013596_right_root small_10013596_right_fuel small_10013596_right_count small_10013596_right_encoded small_10013596_right_checked

theorem cover_10013596 : CoveredBy scale carrier boxes root_10013596 := by
  apply coveredBy_split_literal root_10013596 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.root_10013597 small_10013596_right_root coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.cover_10013597
  · exact small_10013596_right_covered
#print axioms cover_10013596

def root_10013590 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10013590_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10013590_left_fuel : Nat := 1
def small_10013590_left_count : Nat := 1
def small_10013590_left_encoded : String := "00000002"
theorem small_10013590_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10013590_left_root small_10013590_left_fuel small_10013590_left_count small_10013590_left_encoded = true := by
  decide +kernel
theorem small_10013590_left_covered : CoveredBy scale carrier boxes small_10013590_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10013590_left_root small_10013590_left_fuel small_10013590_left_count small_10013590_left_encoded small_10013590_left_checked

theorem cover_10013590 : CoveredBy scale carrier boxes root_10013590 := by
  apply coveredBy_split_literal root_10013590 small_10013590_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.root_10013596 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_10013590_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.cover_10013596
#print axioms cover_10013590

def root_10013589 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10013589 : CoveredBy scale carrier boxes root_10013589 := by
  apply coveredBy_split_literal root_10013589 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.root_10013590 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3756.root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.cover_10013590
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3756.covered
#print axioms cover_10013589

def root_10013584 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10013584_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10013584_right_fuel : Nat := 1
def small_10013584_right_count : Nat := 1
def small_10013584_right_encoded : String := "00000001"
theorem small_10013584_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10013584_right_root small_10013584_right_fuel small_10013584_right_count small_10013584_right_encoded = true := by
  decide +kernel
theorem small_10013584_right_covered : CoveredBy scale carrier boxes small_10013584_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10013584_right_root small_10013584_right_fuel small_10013584_right_count small_10013584_right_encoded small_10013584_right_checked

theorem cover_10013584 : CoveredBy scale carrier boxes root_10013584 := by
  apply coveredBy_split_literal root_10013584 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.root_10013589 small_10013584_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.cover_10013589
  · exact small_10013584_right_covered
#print axioms cover_10013584

def root_10012578 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10012578_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10012578_left_fuel : Nat := 31
def small_10012578_left_count : Nat := 465
def small_10012578_left_encoded : String := "120701020000000108A912FB12073CFA0000000208A91307120701060000000308A912FF12073CFE000000040CFD9C010F34D1000000000004548A0313867102000000010CFD9BFB000000090F34D0FA00000009000000021386AD020CFD9BFB0F350CFA0000000204548A0713867106000000030CFD9BFF0F350CFE000000040C9A86FA000000090F8750FB00000009000000020F34D0FE0000000900000004000000090F34D0FA04548A0713867106000000030CFD9BFF000000090F34D0FE00000005000000040000000900000002000000010F350D0004548A0313867102000000010CFD9BFB0F350CFA0000000204548A0713867106000000030CFD9BFF0F350CFE000000040C9A87000F875101000000000C9A86FA0F878CFB000000020C9A86FE000000090F8750FF00000008000000040F8750FB0C9A86FE0000000600000006000000020F878D010C9A86FA000000090F8750FB0000000900000002000000000F34D0FE00000006000000041386AD060CFD9BFF0000000900000006000000030F34D0FA04548A0713867106000000030CFD9BFF0F350CFE000000040C9A87000000000A000000090F34D0FE000000050000000400000009000000021386AD020CFD9BFB0F350CFA0000000204548A0713867106000000030CFD9BFF0F350CFE000000040C9A87000F875101000000000C9A86FA0F878CFB000000020C9A86FE000000050F8750FF0000000A000000040F8750FB0C9A86FE0F878CFF00000004000000060F8750FF067ECE8312EA5902000000010000000612EA9502022A458713E1C506000000030B4D44000000000A10804D010B4D43FA0000000A0000000600000000000000060000000100000004000000020F878D010C9A86FA0F878CFB000000020C9A86FE000000090F8750FF067ECE830000000912EA9502022A4587000000080000000900000001000000040F8750FB0C9A86FE0F878CFF00000004067ECE8300000006000000060F8750FF067ECE8312EA5902000000010000000912EA9502022A458713E1C506000000030DE7CA000E5FD901000000000B4D43FA00000009000000060E601501000000090000000000000006000000010000000400000002000000000F34D0FE0C9A8700000000050F878D010C9A86FA000000050000000600000000000000041386AD060CFD9BFF0F350CFE000000040C9A87000F875101000000000C9A86FA0F878CFB000000020C9A86FE000000050F8750FF00000009000000040F8750FB00000006000000020F878D0100000009000000000F34D0FE0000000600000004000000030F34D0FA04548A0713867106000000030CFD9BFF0F350CFE000000040C9A8700000000050F878D010C9A86FE0000000500000008000000000F34D0FE00000005000000041386AD060CFD9BFF0F350CFE000000040C9A870000000005000000090F34D0FE000000050000000400000003000000020000000100000000120700FE0CFD9C010F34D1000000000004548A031386710200000001000000091386AD020CFD9BFB0F350CFA00000002000000060F34D0FA0000000900000002000000010F350D0004548A0313867102000000010CFD9BFB00000006000000061386AD020CFD9BFB0F350CFA00000002000000060F34D0FA000000050000000200000001000000000000000412073D0608A912FF12073CFE000000040CFD9C010F34D10000000000000000090F350D0004548A031386710200000001000000091386AD020CFD9BFB0F350CFA000000020CFD9C070F34D106000000030CFD9BFF0000000900000006000000060F34D0FA00000009000000020000000100000000120700FE0CFD9C01000000060F350D0000000006000000000000000400000003120700FA08A91307120701060000000308A912FF12073CFE000000040CFD9C010F34D1000000000004548A031386710200000001000000091386AD02045489FB1386ACFA0000000204548A0713867106000000030CFD9BFF000000090F34D0FE000000050000000400000009138670FA04548A07000000080000000700000002000000010F350D0004548A031386710200000001045489FB1386ACFA0000000204548A070000000500000009138670FA0000000A000000021386AD02045489FB1386ACFA0000000204548A0713867106000000030CFD9BFF000000050F34D0FE00000005000000041386AD060CFD9BFF0000000A0F34D0FE000000050000000400000003138670FA0000000A000000020000000100000000120700FE0CFD9C010F34D10000000000000000090F350D0004548A031386710200000001045489FB00000005138670FA00000005000000021386AD02045489FB1386ACFA0000000204548A070000000500000009138670FA04548A07000000051386AD06045489FF0000000500000009000000030000000200000001000000000000000412073D0608A912FF12073CFE000000040CFD9C01000000090F350D0004548A03000000091386AD02045489FB00000009138670FA00000009000000020000000100000000120700FE00000009000000040000000300000002"
theorem small_10012578_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10012578_left_root small_10012578_left_fuel small_10012578_left_count small_10012578_left_encoded = true := by
  decide +kernel
theorem small_10012578_left_covered : CoveredBy scale carrier boxes small_10012578_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10012578_left_root small_10012578_left_fuel small_10012578_left_count small_10012578_left_encoded small_10012578_left_checked

theorem cover_10012578 : CoveredBy scale carrier boxes root_10012578 := by
  apply coveredBy_split_literal root_10012578 small_10012578_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.root_10013584 coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_10012578_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.cover_10013584
#print axioms cover_10012578

def root_10012573 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10012573_right_root : ZRayBox := fun j => (#[⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10012573_right_fuel : Nat := 1
def small_10012573_right_count : Nat := 1
def small_10012573_right_encoded : String := "00000000"
theorem small_10012573_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10012573_right_root small_10012573_right_fuel small_10012573_right_count small_10012573_right_encoded = true := by
  decide +kernel
theorem small_10012573_right_covered : CoveredBy scale carrier boxes small_10012573_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10012573_right_root small_10012573_right_fuel small_10012573_right_count small_10012573_right_encoded small_10012573_right_checked

theorem cover_10012573 : CoveredBy scale carrier boxes root_10012573 := by
  apply coveredBy_split_literal root_10012573 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.root_10012578 small_10012573_right_root coord0 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.cover_10012578
  · exact small_10012573_right_covered
#print axioms cover_10012573

def root_10011481 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_10011481 : CoveredBy scale carrier boxes root_10011481 := by
  apply coveredBy_split_literal root_10011481 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3752.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.root_10012573 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3752.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.cover_10012573
#print axioms cover_10011481

def root_10011475 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10011475_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10011475_left_fuel : Nat := 1
def small_10011475_left_count : Nat := 1
def small_10011475_left_encoded : String := "00000004"
theorem small_10011475_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10011475_left_root small_10011475_left_fuel small_10011475_left_count small_10011475_left_encoded = true := by
  decide +kernel
theorem small_10011475_left_covered : CoveredBy scale carrier boxes small_10011475_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10011475_left_root small_10011475_left_fuel small_10011475_left_count small_10011475_left_encoded small_10011475_left_checked

theorem cover_10011475 : CoveredBy scale carrier boxes root_10011475 := by
  apply coveredBy_split_literal root_10011475 small_10011475_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.root_10011481 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_10011475_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.cover_10011481
#print axioms cover_10011475

def root_10022742 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10022742_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10022742_right_fuel : Nat := 16
def small_10022742_right_count : Nat := 123
def small_10022742_right_encoded : String := "12073D06050000FE135D80FF000000040CFD9C010F34D100000000000CFD9C030F34D102000000010CFD9BFB00000009000000070F350D020CFD9BFB0F350CFA000000020000000700000007000000010F350D000CFD9C030F34D102000000010CFD9BFB0F350CFA000000020CFD9C070F34D106000000030C9A87000F875101000000000000000A0F878D010C9A86FA0000000700000007000000000F350D060C9A87000F875101000000000000000900000007000000030F34D0FA0CFD9C070F34D106000000030000000700000007000000020F350D020CFD9BFB0F350CFA000000020CFD9C070F34D106000000030C9A87000F875101000000000C9A87020F875103000000010000000A0000000A0F878D010C9A8702000000070F878D030000000700000001000000000F350D060C9A87000F875101000000000000000700000007000000030F34D0FA0CFD9C070F34D106000000030000000700000007000000020000000100000000135D44FF0CFD9C010F34D10000000000000000070F350D000CFD9C030F34D102000000010CFD9BFB0F350CFA000000020CFD9C070F34D106000000030000000700000007000000070F350D020CFD9BFB0F350CFA000000020CFD9C070F34D1060000000300000007000000070000000700000001000000000000000400000003"
theorem small_10022742_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10022742_right_root small_10022742_right_fuel small_10022742_right_count small_10022742_right_encoded = true := by
  decide +kernel
theorem small_10022742_right_covered : CoveredBy scale carrier boxes small_10022742_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10022742_right_root small_10022742_right_fuel small_10022742_right_count small_10022742_right_encoded small_10022742_right_checked

theorem cover_10022742 : CoveredBy scale carrier boxes root_10022742 := by
  apply coveredBy_split_literal root_10022742 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3757.root small_10022742_right_root coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3757.covered
  · exact small_10022742_right_covered
#print axioms cover_10022742

def root_10022736 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10022736_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10022736_left_fuel : Nat := 1
def small_10022736_left_count : Nat := 1
def small_10022736_left_encoded : String := "00000002"
theorem small_10022736_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10022736_left_root small_10022736_left_fuel small_10022736_left_count small_10022736_left_encoded = true := by
  decide +kernel
theorem small_10022736_left_covered : CoveredBy scale carrier boxes small_10022736_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10022736_left_root small_10022736_left_fuel small_10022736_left_count small_10022736_left_encoded small_10022736_left_checked

theorem cover_10022736 : CoveredBy scale carrier boxes root_10022736 := by
  apply coveredBy_split_literal root_10022736 small_10022736_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.root_10022742 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_10022736_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.cover_10022742
#print axioms cover_10022736

def root_10022735 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10022735_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10022735_right_fuel : Nat := 8
def small_10022735_right_count : Nat := 23
def small_10022735_right_encoded : String := "120700FA08A913071207010600000003050000FE135D80FF000000040CFD9C010F34D10000000000000000070F350D000000000A00000000135D44FF000000070000000412073D06050000FE00000007000000070000000300000002"
theorem small_10022735_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10022735_right_root small_10022735_right_fuel small_10022735_right_count small_10022735_right_encoded = true := by
  decide +kernel
theorem small_10022735_right_covered : CoveredBy scale carrier boxes small_10022735_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10022735_right_root small_10022735_right_fuel small_10022735_right_count small_10022735_right_encoded small_10022735_right_checked

theorem cover_10022735 : CoveredBy scale carrier boxes root_10022735 := by
  apply coveredBy_split_literal root_10022735 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.root_10022736 small_10022735_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.cover_10022736
  · exact small_10022735_right_covered
#print axioms cover_10022735

def root_10022730 : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10022730_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_10022730_right_fuel : Nat := 1
def small_10022730_right_count : Nat := 1
def small_10022730_right_encoded : String := "00000001"
theorem small_10022730_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_10022730_right_root small_10022730_right_fuel small_10022730_right_count small_10022730_right_encoded = true := by
  decide +kernel
theorem small_10022730_right_covered : CoveredBy scale carrier boxes small_10022730_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_10022730_right_root small_10022730_right_fuel small_10022730_right_count small_10022730_right_encoded small_10022730_right_checked

theorem cover_10022730 : CoveredBy scale carrier boxes root_10022730 := by
  apply coveredBy_split_literal root_10022730 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.root_10022735 small_10022730_right_root coord1 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673.cover_10022735
  · exact small_10022730_right_covered
#print axioms cover_10022730

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0673
