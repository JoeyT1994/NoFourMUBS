import TaoBundleAssembly0596
import TaoBundleAssembly0598
import TaoBundleChunkBatch0816
import TaoBundleChunkBatch0818
import TaoBundleChunkBatch0819
import TaoBundleChunkBatch0820
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0599
def root_8718544 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8718544_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8718544_right_fuel : Nat := 23
def small_8718544_right_count : Nat := 211
def small_8718544_right_encoded : String := "1151E8FD0A0000FE1152250908A912FB12073D0408A913090000000512073CFE000000040500010000000005135D8101000000050000000000000002120701040000000208A91309120700FE000000050000000412073CFE0000000405000100135D450100000000050000F8135D8103050000FC00000005135D44FD00000005000000030000000100000007135D8101050000F8135D8103050000FC135D80FD00000003045489FB0000000513867104000000020CFD9C09000000050F350CFE000000040C9A86FE000000050F875109000000040780010000000005128A7D010000000500000000135D44FD045489FB0000000513867104000000020CFD9C09000000050F350CFE000000040C9A86FE000000050F87510900000004000000070000000300000001135D450300000001050000FC135D80FD00000003045489FB0000000713867104000000020CFD9C090000000700000007135D44FD000000070000000300000000000000041151E9090000000408A912FB12073D040500010000000007135D8101050000F8135D8103050000FC00000007135D44FD000000070000000300000001000000070000000000000002120701040000000205000100135D450100000000050000F8135D8103050000FC135D80FD00000003050000FE0000000700000009135D44FD050000FE0000000700000006000000030000000100000007135D8101050000F8135D8103050000FC135D80FD00000003050000FE135D8109045489FB00000007138671040000000207800100128A410100000000078000F80000000900000007128A7D01078000F8128A7D03078000FC00000008128A40FD078000FE00000005000000080000000300000001000000080000000000000004135D450900000004045489FB1386AD040780010000000006128A7D01078000F80000000600000006000000000000000200000008135D44FD050000FE135D8109045489FB0000000713867104000000020780010000000009128A7D01078000F800000009000000070000000000000004135D450900000004045489FB00000006000000080000000300000001135D450300000001050000FC135D80FD00000003050000FE0000000700000008135D44FD050000FE0000000700000008000000030000000000000003"
theorem small_8718544_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8718544_right_root small_8718544_right_fuel small_8718544_right_count small_8718544_right_encoded = true := by
  decide +kernel
theorem small_8718544_right_covered : CoveredBy scale carrier boxes small_8718544_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8718544_right_root small_8718544_right_fuel small_8718544_right_count small_8718544_right_encoded small_8718544_right_checked

theorem cover_8718544 : CoveredBy scale carrier boxes root_8718544 := by
  apply coveredBy_split_literal root_8718544 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0598.root_8718545 small_8718544_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0598.cover_8718545
  · exact small_8718544_right_covered
#print axioms cover_8718544

def root_8718538 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8718538_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8718538_left_fuel : Nat := 1
def small_8718538_left_count : Nat := 1
def small_8718538_left_encoded : String := "00000002"
theorem small_8718538_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8718538_left_root small_8718538_left_fuel small_8718538_left_count small_8718538_left_encoded = true := by
  decide +kernel
theorem small_8718538_left_covered : CoveredBy scale carrier boxes small_8718538_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8718538_left_root small_8718538_left_fuel small_8718538_left_count small_8718538_left_encoded small_8718538_left_checked

theorem cover_8718538 : CoveredBy scale carrier boxes root_8718538 := by
  apply coveredBy_split_literal root_8718538 small_8718538_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0599.root_8718544 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8718538_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0599.cover_8718544
#print axioms cover_8718538

def root_8718492 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8718492_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8718492_left_fuel : Nat := 9
def small_8718492_left_count : Nat := 21
def small_8718492_left_encoded : String := "1151E8FB0A0000FC115224FD000000030A0000FE1152250908A912FD00000005120700FC08A91309000000050000000700000003000000041151E90900000004000000071151E8FD000000050000000300000002"
theorem small_8718492_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8718492_left_root small_8718492_left_fuel small_8718492_left_count small_8718492_left_encoded = true := by
  decide +kernel
theorem small_8718492_left_covered : CoveredBy scale carrier boxes small_8718492_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8718492_left_root small_8718492_left_fuel small_8718492_left_count small_8718492_left_encoded small_8718492_left_checked

theorem cover_8718492 : CoveredBy scale carrier boxes root_8718492 := by
  apply coveredBy_split_literal root_8718492 small_8718492_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0599.root_8718538 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8718492_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0599.cover_8718538
#print axioms cover_8718492

def root_8718486 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8718486_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8718486_left_fuel : Nat := 1
def small_8718486_left_count : Nat := 1
def small_8718486_left_encoded : String := "00000001"
theorem small_8718486_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8718486_left_root small_8718486_left_fuel small_8718486_left_count small_8718486_left_encoded = true := by
  decide +kernel
theorem small_8718486_left_covered : CoveredBy scale carrier boxes small_8718486_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8718486_left_root small_8718486_left_fuel small_8718486_left_count small_8718486_left_encoded small_8718486_left_checked

theorem cover_8718486 : CoveredBy scale carrier boxes root_8718486 := by
  apply coveredBy_split_literal root_8718486 small_8718486_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0599.root_8718492 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_8718486_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0599.cover_8718492
#print axioms cover_8718486

def root_8712760 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8712760 : CoveredBy scale carrier boxes root_8712760 := by
  apply coveredBy_split_literal root_8712760 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0596.root_8712761 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0599.root_8718486 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0596.cover_8712761
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0599.cover_8718486
#print axioms cover_8712760

def root_8712754 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8712754_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8712754_left_fuel : Nat := 1
def small_8712754_left_count : Nat := 1
def small_8712754_left_encoded : String := "00000000"
theorem small_8712754_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8712754_left_root small_8712754_left_fuel small_8712754_left_count small_8712754_left_encoded = true := by
  decide +kernel
theorem small_8712754_left_covered : CoveredBy scale carrier boxes small_8712754_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8712754_left_root small_8712754_left_fuel small_8712754_left_count small_8712754_left_encoded small_8712754_left_checked

theorem cover_8712754 : CoveredBy scale carrier boxes root_8712754 := by
  apply coveredBy_split_literal root_8712754 small_8712754_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0599.root_8712760 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_8712754_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0599.cover_8712760
#print axioms cover_8712754

def root_8740167 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8740167 : CoveredBy scale carrier boxes root_8740167 := by
  apply coveredBy_split_literal root_8740167 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3271.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3272.root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3271.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3272.covered
#print axioms cover_8740167

def root_8740161 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8740161_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8740161_left_fuel : Nat := 1
def small_8740161_left_count : Nat := 1
def small_8740161_left_encoded : String := "00000003"
theorem small_8740161_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8740161_left_root small_8740161_left_fuel small_8740161_left_count small_8740161_left_encoded = true := by
  decide +kernel
theorem small_8740161_left_covered : CoveredBy scale carrier boxes small_8740161_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8740161_left_root small_8740161_left_fuel small_8740161_left_count small_8740161_left_encoded small_8740161_left_checked

theorem cover_8740161 : CoveredBy scale carrier boxes root_8740161 := by
  apply coveredBy_split_literal root_8740161 small_8740161_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0599.root_8740167 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8740161_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0599.cover_8740167
#print axioms cover_8740161

def root_8744905 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8744905_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8744905_left_fuel : Nat := 30
def small_8744905_left_count : Nat := 451
def small_8744905_left_encoded : String := "1152250908A91301120701000000000008A912FB12073D0408A91309120700FE000000050000000412073CFE00000004050000F800000005135D450300000001050000FC000000050000000900000002120701040000000208A91309120700FE000000050000000412073CFE00000004050000F8135D8103050000FC00000005135D44FD04548A01000000091386AD00045489FB0000000900000006000000000000000300000001135D450300000001050000FC135D80FD0000000304548A01000000061386AD00045489FB0000000900000006000000000000000912073D0008A912FB12073D0408A91309120700FE000000050000000412073CFE00000004050000F8135D8103050000FC00000005135D44FD000000050000000300000001135D450300000001050000FC135D80FD000000030CFD9C01000000050F350D000000000500000000135D44FD0CFD9C010F34D100000000000CFD9BFB0F350D0400000005000000020F34D104000000020CFD9C0900000009000000070F350D0000000007000000000000000300000002120701040000000208A91309120700FE050000F800000005135D450300000001050000FC00000005135D44FD00000005000000030000000412073CFE00000004050000F8135D8103050000FC135D80FD000000030CFD9C010F34D10000000000045489FB0000000513867104000000020CFD9C09000000050F350CFE000000040C9A86FE000000050F87510900000004078000F800000005128A410300000001000000060F350D00045489FB0000000513867104000000020CFD9C09000000050F350CFE000000040C9A87000F875101000000000C9A86FE000000050F87510900000004078000F800000005128A410300000001078000FC00000005000000070F878D010C9A86FE000000050F87510900000004078000F800000005128A410300000001078000FC00000005128A40FD00000005000000030000000000000000135D44FD0CFD9C010F34D10000000000045489FB1386AD040CFD9C09000000050F350CFE000000040C9A86FE000000050F87510900000004078000F800000005000000090000000213867104000000020CFD9C09000000060F350CFE000000040C9A86FE0F878D0900000006000000040F87510900000004078000F8128A7D03028000FC0000000513D7B0FD0AD357810000000510D13D0000000005000000000000000300000001128A410300000001028000FC00000006000000090F350D00045489FB1386AD040CFD9C09000000050F350CFE000000040C9A8700000000050F878D0100000005000000000000000213867104000000020CFD9C090F34D0FE00000005000000040F350CFE000000040C9A87000F875101000000000C9A86FE0F878D0900000005000000040F87510900000004078000F8128A7D030000000500000001000000070F878D010C9A86FE0F878D0900000005000000040F87510900000004078000F8128A7D03028000FC0000000513D7B0FD022A457B0000000513E1C504000000020DE7CA00000000050E60150100000005000000000000000300000001128A410300000001028000FC13D7ECFD00000003022A457B000000050000000813D7B0FD022A457B0000000713E1C504000000020DE7CA000E5FD90100000000000000070E60150100000006000000000000000300000000000000000000000300000001135D450300000001050000FC135D80FD000000030CFD9C010F34D10000000000045489FB1386AD040CFD9C090F34D0FE00000005000000040F350CFE000000040C9A86FE000000090F87510900000004028000F800000009000000090000000213867104000000020CFD9C09000000060F350CFE000000040C9A86FE000000060F87510900000004000000060F350D00045489FB1386AD040CFD9C090F34D0FE00000005000000040F350CFE000000040C9A8700000000070F878D0100000007000000000000000213867104000000020CFD9C090F34D0FE00000005000000040F350CFE000000040C9A87000F875101000000000C9A86FE000000070F87510900000004000000070F878D010C9A86FE0F878D09028000F80000000500000006000000040F87510900000004000000080000000000000000135D44FD0CFD9C010F34D10000000000045489FB1386AD040CFD9C0900000009000000090000000213867104000000020CFD9C09000000060F350CFE000000040C9A86FE000000090F87510900000004000000090F350D00045489FB1386AD040CFD9C090F34D0FE0000000500000004000000070000000213867104000000020CFD9C090F34D0FE0C9A87000000000500000006000000040F350CFE000000040C9A87000F87510100000000000000070F878D010C9A86FE0F878D0900000007000000040F87510900000004028000F813D7ED03028000FC000000070000000700000001000000070000000000000000000000030000000000000004"
theorem small_8744905_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8744905_left_root small_8744905_left_fuel small_8744905_left_count small_8744905_left_encoded = true := by
  decide +kernel
theorem small_8744905_left_covered : CoveredBy scale carrier boxes small_8744905_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8744905_left_root small_8744905_left_fuel small_8744905_left_count small_8744905_left_encoded small_8744905_left_checked

theorem cover_8744905 : CoveredBy scale carrier boxes root_8744905 := by
  apply coveredBy_split_literal root_8744905 small_8744905_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3273.root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8744905_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3273.covered
#print axioms cover_8744905

def root_8744900 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8744900_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8744900_right_fuel : Nat := 1
def small_8744900_right_count : Nat := 1
def small_8744900_right_encoded : String := "00000003"
theorem small_8744900_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8744900_right_root small_8744900_right_fuel small_8744900_right_count small_8744900_right_encoded = true := by
  decide +kernel
theorem small_8744900_right_covered : CoveredBy scale carrier boxes small_8744900_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8744900_right_root small_8744900_right_fuel small_8744900_right_count small_8744900_right_encoded small_8744900_right_checked

theorem cover_8744900 : CoveredBy scale carrier boxes root_8744900 := by
  apply coveredBy_split_literal root_8744900 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0599.root_8744905 small_8744900_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0599.cover_8744905
  · exact small_8744900_right_covered
#print axioms cover_8744900

def root_8740160 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8740160 : CoveredBy scale carrier boxes root_8740160 := by
  apply coveredBy_split_literal root_8740160 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0599.root_8740161 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0599.root_8744900 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0599.cover_8740161
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0599.cover_8744900
#print axioms cover_8740160

def root_8740154 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8740154_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8740154_left_fuel : Nat := 1
def small_8740154_left_count : Nat := 1
def small_8740154_left_encoded : String := "00000002"
theorem small_8740154_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8740154_left_root small_8740154_left_fuel small_8740154_left_count small_8740154_left_encoded = true := by
  decide +kernel
theorem small_8740154_left_covered : CoveredBy scale carrier boxes small_8740154_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8740154_left_root small_8740154_left_fuel small_8740154_left_count small_8740154_left_encoded small_8740154_left_checked

theorem cover_8740154 : CoveredBy scale carrier boxes root_8740154 := by
  apply coveredBy_split_literal root_8740154 small_8740154_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0599.root_8740160 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_8740154_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0599.cover_8740160
#print axioms cover_8740154

def root_8740030 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8740030_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8740030_left_fuel : Nat := 16
def small_8740030_left_count : Nat := 59
def small_8740030_left_encoded : String := "1151E8FB0A0000FC115224FD000000030A0000FE1152250900000005000000041151E9090000000408A91301120701000000000008A912FD00000005120700FC000000050000000312073D0008A912FD12073CFC00000003050000F80000000500000007120700FC050000F800000005135D4503000000010500010400000005135D80FB00000002050000FE00000005135D4509000000040000000700000003000000001151E8FD0A0000FE000000051151E9090000000408A913011207010000000000050000F8000000050000000912073D00050000F80000000500000007000000000000000300000002"
theorem small_8740030_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8740030_left_root small_8740030_left_fuel small_8740030_left_count small_8740030_left_encoded = true := by
  decide +kernel
theorem small_8740030_left_covered : CoveredBy scale carrier boxes small_8740030_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8740030_left_root small_8740030_left_fuel small_8740030_left_count small_8740030_left_encoded small_8740030_left_checked

theorem cover_8740030 : CoveredBy scale carrier boxes root_8740030 := by
  apply coveredBy_split_literal root_8740030 small_8740030_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0599.root_8740154 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8740030_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0599.cover_8740154
#print axioms cover_8740030

def root_8740024 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8740024_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8740024_left_fuel : Nat := 1
def small_8740024_left_count : Nat := 1
def small_8740024_left_encoded : String := "00000001"
theorem small_8740024_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8740024_left_root small_8740024_left_fuel small_8740024_left_count small_8740024_left_encoded = true := by
  decide +kernel
theorem small_8740024_left_covered : CoveredBy scale carrier boxes small_8740024_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8740024_left_root small_8740024_left_fuel small_8740024_left_count small_8740024_left_encoded small_8740024_left_checked

theorem cover_8740024 : CoveredBy scale carrier boxes root_8740024 := by
  apply coveredBy_split_literal root_8740024 small_8740024_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0599.root_8740030 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_8740024_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0599.cover_8740030
#print axioms cover_8740024

def root_8738698 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8738698 : CoveredBy scale carrier boxes root_8738698 := by
  apply coveredBy_split_literal root_8738698 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3270.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0599.root_8740024 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3270.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0599.cover_8740024
#print axioms cover_8738698

def root_8738693 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8738693_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8738693_right_fuel : Nat := 1
def small_8738693_right_count : Nat := 1
def small_8738693_right_encoded : String := "00000000"
theorem small_8738693_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8738693_right_root small_8738693_right_fuel small_8738693_right_count small_8738693_right_encoded = true := by
  decide +kernel
theorem small_8738693_right_covered : CoveredBy scale carrier boxes small_8738693_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8738693_right_root small_8738693_right_fuel small_8738693_right_count small_8738693_right_encoded small_8738693_right_checked

theorem cover_8738693 : CoveredBy scale carrier boxes root_8738693 := by
  apply coveredBy_split_literal root_8738693 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0599.root_8738698 small_8738693_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0599.cover_8738698
  · exact small_8738693_right_covered
#print axioms cover_8738693

def root_8712753 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8712753 : CoveredBy scale carrier boxes root_8712753 := by
  apply coveredBy_split_literal root_8712753 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0599.root_8712754 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0599.root_8738693 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0599.cover_8712754
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0599.cover_8738693
#print axioms cover_8712753

def root_8711297 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8711297 : CoveredBy scale carrier boxes root_8711297 := by
  apply coveredBy_split_literal root_8711297 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3261.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0599.root_8712753 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3261.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0599.cover_8712753
#print axioms cover_8711297

def root_8748503 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8748503 : CoveredBy scale carrier boxes root_8748503 := by
  apply coveredBy_split_literal root_8748503 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3274.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3275.root coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3274.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3275.covered
#print axioms cover_8748503

def root_8755447 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8755447 : CoveredBy scale carrier boxes root_8755447 := by
  apply coveredBy_split_literal root_8755447 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3277.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3278.root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3277.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3278.covered
#print axioms cover_8755447

def root_8755442 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8755442_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8755442_right_fuel : Nat := 1
def small_8755442_right_count : Nat := 1
def small_8755442_right_encoded : String := "00000001"
theorem small_8755442_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8755442_right_root small_8755442_right_fuel small_8755442_right_count small_8755442_right_encoded = true := by
  decide +kernel
theorem small_8755442_right_covered : CoveredBy scale carrier boxes small_8755442_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8755442_right_root small_8755442_right_fuel small_8755442_right_count small_8755442_right_encoded small_8755442_right_checked

theorem cover_8755442 : CoveredBy scale carrier boxes root_8755442 := by
  apply coveredBy_split_literal root_8755442 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0599.root_8755447 small_8755442_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0599.cover_8755447
  · exact small_8755442_right_covered
#print axioms cover_8755442

def root_8760917 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8760917_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8760917_left_fuel : Nat := 27
def small_8760917_left_count : Nat := 481
def small_8760917_left_encoded : String := "120701000000000008A913091207010800000004050000F8135D810305000104135D44FB050000FC135D80FD0000000304548A010000000A00000008135D44FD04548A01000000071386AD0004548A09000000071386AD08078000F800000007128A4103000000010280010413D7B0FB028000FC0000000800000007000000020000000700000004000000000000000300000002135D80FB00000002050000FC000000080000000700000001135D45030000000105000104135D44FB050000FC135D80FD0000000304548A0113867100000000000000000A00000008135D44FD04548A01138671000000000004548A09000000071386AD08028000F80000000700000005000000041386AD0004548A09000000081386AD08028000F813D7ED030280010413D7B0FB028000FC0000000813D7B0FD067ECE8100000007000000080000000300000002000000080000000113D7B103000000010280010413D7B0FB028000FC0000000800000005000000020000000500000004000000000000000300000002135D80FB00000002050000FC000000080000000512073D08050000F8135D810305000104135D44FB050000FC135D80FD0000000304548A010000000A1386AD000CFD9C090F34D108000000040000000A0000000A00000000135D44FD04548A0113867100000000000CFD9C090F34D108000000040000000A0000000A1386AD000CFD9C090F34D10800000004078000F80000000A128A4103000000010280010413D7B0FB0000000A000000020000000A0F350D080C9A87080F875109000000040000000A0F878D09078000F80000000A128A4103000000010000000A0000000400000004000000000000000300000002135D80FB00000002050000FC135D80FD0000000304548A010000000A1386AD000CFD9C090F34D108000000040000000A0000000A00000000135D44FD04548A0113867100000000000CFD9C090F34D10800000004000000070000000A1386AD000CFD9C090F34D10800000004078000F80000000A128A41030000000107800104128A40FB0000000A000000020000000A0F350D080C9A87080F875109000000040000000A0F878D09078000F80000000A128A4103000000010000000A0000000400000004000000000000000300000001135D45030000000105000104135D44FB050000FC135D80FD0000000304548A0113867100000000000CFD9C090F34D108000000040000000A0000000A1386AD000CFD9C090F34D10800000004028000F80000000A13D7B103000000010280010413D7B0FB0000000A00000002000000080F350D080C9A87080F875109000000040000000A0F878D09028000F80000000A13D7B103000000010000000A000000040000000400000000135D44FD04548A0113867100000000000CFD9C090F34D10800000004028000F80000000A13D7B103000000010280010400000009000000050F350D0800000009000000041386AD000CFD9C090F34D10800000004028000F813D7ED030280010413D7B0FB028000FC0000000A13D7B0FD067ECE810000000A12EA95000AD3578910D101080000000403C000F80000000A13A511030000000101400104000000090000000510D13D0803C000F800000009000000090000000400000000000000030000000213D7ECFB00000002028000FC0000000A13D7B0FD067ECE810000000A12EA95000AD3578910D1010800000004000000050000000A00000000000000030000000113D7B103000000010280010413D7B0FB028000FC13D7ECFD00000003067ECE810000000A12EA95000AD35789000000080000000A0000000013D7B0FD067ECE8112EA5900000000000000000512EA95000AD3578910D10108000000040000000510D13D08000000090000000400000000000000030000000213D7ECFB00000002028000FC13D7ECFD00000003067ECE810000000A12EA95000000000800000000000000050F350D080C9A87080F87510900000004028000F800000009000000070F878D09028000F813D7ED030280010413D7B0FB028000FC0000000A000000090000000213D7ECFB00000002028000FC0000000A13D7B0FD067ECE810000000912EA95000000000A00000000000000030000000113D7B10300000001028001040000000913D7ECFB00000002028000FC00000006000000060000000400000004000000000000000300000002135D80FB00000002050000FC135D80FD0000000304548A0113867100000000000CFD9C090F34D108000000040000000A0000000A1386AD000CFD9C090F34D10800000004000000080F350D080C9A87080F87510900000004000000060F878D09028000F80000000A00000006000000040000000400000000135D44FD04548A0113867100000000000CFD9C090F34D10800000004000000050F350D080C9A87080F87510900000004000000060000000A000000041386AD000CFD9C090F34D10800000004028000F813D7ED0307800104128A40FB028000FC0000000A00000005000000020000000500000001000000050F350D080C9A87080F87510900000004000000060F878D09028000F813D7ED0307800104128A40FB028000FC0000000600000006000000020000000600000001000000060000000400000004000000000000000300000004"
theorem small_8760917_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8760917_left_root small_8760917_left_fuel small_8760917_left_count small_8760917_left_encoded = true := by
  decide +kernel
theorem small_8760917_left_covered : CoveredBy scale carrier boxes small_8760917_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8760917_left_root small_8760917_left_fuel small_8760917_left_count small_8760917_left_encoded small_8760917_left_checked

theorem cover_8760917 : CoveredBy scale carrier boxes root_8760917 := by
  apply coveredBy_split_literal root_8760917 small_8760917_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3279.root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_8760917_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3279.covered
#print axioms cover_8760917

def root_8760912 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8760912_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8760912_right_fuel : Nat := 1
def small_8760912_right_count : Nat := 1
def small_8760912_right_encoded : String := "00000004"
theorem small_8760912_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8760912_right_root small_8760912_right_fuel small_8760912_right_count small_8760912_right_encoded = true := by
  decide +kernel
theorem small_8760912_right_covered : CoveredBy scale carrier boxes small_8760912_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8760912_right_root small_8760912_right_fuel small_8760912_right_count small_8760912_right_encoded small_8760912_right_checked

theorem cover_8760912 : CoveredBy scale carrier boxes root_8760912 := by
  apply coveredBy_split_literal root_8760912 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0599.root_8760917 small_8760912_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0599.cover_8760917
  · exact small_8760912_right_covered
#print axioms cover_8760912

def root_8760630 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8760630_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8760630_left_fuel : Nat := 21
def small_8760630_left_count : Nat := 137
def small_8760630_left_encoded : String := "1151E9090000000408A913011207010000000000050000F8135D810305000104135D44FB050000FC000000050000000900000002135D80FB00000002050000FC0000000A135D44FD05000108000000090000000A0000000300000001135D45030000000105000104135D44FB050000FC135D80FD000000030500010800000005135D810904548A010000000900000007000000040000000900000002135D80FB00000002050000FC135D80FD0000000305000108135D45090000000400000009135D810904548A010000000A0000000600000004135D44FD0500010800000009000000060000000312073D00050000F8135D810305000104135D44FB050000FC00000005135D44FD000000070000000300000002135D80FB00000002050000FC135D80FD000000030500010800000005135D81090CFD9C010F34D10000000000078000F800000005128A4103000000010780010400000005000000060000000700000004135D44FD05000108135D45090000000400000007135D81090CFD9C010F34D10000000000078000F8128A7D0307800104128A40FB028000FC0000000513D7B0FD07800108000000050000000A0000000300000002128A7CFB00000002028000FC000000060000000600000001128A41030000000107800104000000070000000600000007000000040000000300000001135D4503000000010500010400000007135D80FB00000002050000FC00000007135D44FD000000070000000300000000"
theorem small_8760630_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8760630_left_root small_8760630_left_fuel small_8760630_left_count small_8760630_left_encoded = true := by
  decide +kernel
theorem small_8760630_left_covered : CoveredBy scale carrier boxes small_8760630_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8760630_left_root small_8760630_left_fuel small_8760630_left_count small_8760630_left_encoded small_8760630_left_checked

theorem cover_8760630 : CoveredBy scale carrier boxes root_8760630 := by
  apply coveredBy_split_literal root_8760630 small_8760630_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0599.root_8760912 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8760630_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0599.cover_8760912
#print axioms cover_8760630

def root_8760625 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8760625_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8760625_right_fuel : Nat := 1
def small_8760625_right_count : Nat := 1
def small_8760625_right_encoded : String := "00000003"
theorem small_8760625_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8760625_right_root small_8760625_right_fuel small_8760625_right_count small_8760625_right_encoded = true := by
  decide +kernel
theorem small_8760625_right_covered : CoveredBy scale carrier boxes small_8760625_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8760625_right_root small_8760625_right_fuel small_8760625_right_count small_8760625_right_encoded small_8760625_right_checked

theorem cover_8760625 : CoveredBy scale carrier boxes root_8760625 := by
  apply coveredBy_split_literal root_8760625 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0599.root_8760630 small_8760625_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0599.cover_8760630
  · exact small_8760625_right_covered
#print axioms cover_8760625

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0599
