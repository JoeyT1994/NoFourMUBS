import TaoBundleAssembly0076
import TaoBundleAssembly0077
import TaoBundleChunkBatch0312
import TaoBundleChunkBatch0313
import TaoBundleChunkBatch0314
import TaoBundleChunkBatch0315
import TaoBundleChunkBatch0316
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078
def root_3258383 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3258383_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3258383_left_fuel : Nat := 21
def small_3258383_left_count : Nat := 287
def small_3258383_left_encoded : String := "12073D0608A91309120700FE050000F6135D8101050000F8135D81030CFD9C050F34D0FA0CFD9BFD000000080F34D1060000000304548A09000000061386ACFE00000004078000F600000008128A410100000000078000F800000006000000080000000200000008000000010000000800000000135D450100000000050000F8135D81030CFD9C050F34D0FA00000006000000020000000600000001135D4503000000010CFD9C050F34D0FA0CFD9BFD000000060F34D1060000000304548A09000000061386ACFE00000004028000F60000000800000006000000020F350CFA00000002000000080000000412073CFE00000004050000F6135D8101050000F8135D81030CFD9C050F34D0FA0CFD9BFD0F350D060000000A000000030F34D106000000030CFD9C090F34D0FE078000F6128A7D01078000F8000000080000000800000000128A410100000000078000F80000000A128A4103000000010AD357850000000A00000008000000040000000A000000020F350CFA000000020CFD9BFD0F350D0600000008000000030F34D106000000030CFD9C09000000080F350CFE000000040C9A86FA0000000A0000000800000001135D4503000000010CFD9C050F34D0FA0CFD9BFD0F350D060CFD9C090000000800000007000000030F34D106000000030CFD9C090F34D0FE078000F600000008128A410100000000028000F80000000800000008000000040F350CFE000000040C9A86FE0F878D09078000F600000008128A410100000000028000F80000000800000007000000040F875109000000040000000A000000020F350CFA000000020CFD9BFD0F350D0600000008000000030F34D106000000030CFD9C09000000080000000500000000135D450100000000050000F8135D81030CFD9C050F34D0FA0CFD9BFD0F350D060000000A000000030F34D106000000030CFD9C090F34D0FE028000F60000000A0000000A000000040000000A000000020F350CFA000000020CFD9BFD0F350D060CFD9C090F34D0FE00000006000000040000000A000000030F34D106000000030CFD9C090F34D0FE0C9A86FA0F878D05028000F613D7ED01000000080000000000000006000000020F8751050000000200000008000000040000000500000001135D4503000000010CFD9C050F34D0FA0CFD9BFD0F350D060CFD9C090F34D0FE0C9A8706000000060F878CFD00000003028000F60000000700000006000000040000000A000000030F34D106000000030CFD9C090F34D0FE028000F613D7ED01028000F813D7ED030AD3578510D100FA0000000A00000002000000080000000113D7B103000000010AD3578500000007000000080000000013D7B10100000000028000F813D7ED030AD357850000000A000000060000000113D7B103000000010AD3578510D100FA000000070000000210D13CFA000000020AD3577D0000000600000008000000040F350CFE000000040000000A000000020F350CFA000000020CFD9BFD0F350D060CFD9C09000000080F350CFE0000000400000008000000030F34D106000000030CFD9C090F34D0FE00000008000000040000000500000003"
theorem small_3258383_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3258383_left_root small_3258383_left_fuel small_3258383_left_count small_3258383_left_encoded = true := by
  decide +kernel
theorem small_3258383_left_covered : CoveredBy scale carrier boxes small_3258383_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3258383_left_root small_3258383_left_fuel small_3258383_left_count small_3258383_left_encoded small_3258383_left_checked

theorem cover_3258383 : CoveredBy scale carrier boxes root_3258383 := by
  apply coveredBy_split_literal root_3258383 small_3258383_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1246.root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3258383_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1246.covered
#print axioms cover_3258383

def root_3258377 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3258377_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3258377_left_fuel : Nat := 1
def small_3258377_left_count : Nat := 1
def small_3258377_left_encoded : String := "00000002"
theorem small_3258377_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3258377_left_root small_3258377_left_fuel small_3258377_left_count small_3258377_left_encoded = true := by
  decide +kernel
theorem small_3258377_left_covered : CoveredBy scale carrier boxes small_3258377_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3258377_left_root small_3258377_left_fuel small_3258377_left_count small_3258377_left_encoded small_3258377_left_checked

theorem cover_3258377 : CoveredBy scale carrier boxes root_3258377 := by
  apply coveredBy_split_literal root_3258377 small_3258377_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.root_3258383 coord2 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_3258377_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.cover_3258383
#print axioms cover_3258377

def root_3248203 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3248203 : CoveredBy scale carrier boxes root_3248203 := by
  apply coveredBy_split_literal root_3248203 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0077.root_3248204 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.root_3258377 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0077.cover_3248204
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.cover_3258377
#print axioms cover_3248203

def root_3248198 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3248198_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3248198_right_fuel : Nat := 1
def small_3248198_right_count : Nat := 1
def small_3248198_right_encoded : String := "00000004"
theorem small_3248198_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3248198_right_root small_3248198_right_fuel small_3248198_right_count small_3248198_right_encoded = true := by
  decide +kernel
theorem small_3248198_right_covered : CoveredBy scale carrier boxes small_3248198_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3248198_right_root small_3248198_right_fuel small_3248198_right_count small_3248198_right_encoded small_3248198_right_checked

theorem cover_3248198 : CoveredBy scale carrier boxes root_3248198 := by
  apply coveredBy_split_literal root_3248198 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.root_3248203 small_3248198_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.cover_3248203
  · exact small_3248198_right_covered
#print axioms cover_3248198

def root_3248197 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3248197_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3248197_right_fuel : Nat := 22
def small_3248197_right_count : Nat := 149
def small_3248197_right_encoded : String := "1151E9090000000408A91305120700FA08A912FD12073D06050000F6135D8101050000F8135D8103050000FE0000000A135D4509000000040000000A00000001135D450300000001050000FE00000007135D45090000000400000007000000000000000A000000031207010600000003050000F6135D8101050000F8135D8103050000FE135D810904548A05138670FA045489FD0000000A1386710600000003078000F6128A7D01078000F80000000A128A410300000001078000FE00000006128A41090000000400000005000000000000000A000000021386ACFA00000002045489FD0000000A0000000500000004135D45090000000404548A05138670FA045489FD0000000A00000005000000020000000500000001135D450300000001050000FE135D810904548A05138670FA045489FD0000000700000005000000020000000500000004135D45090000000404548A05138670FA045489FD0000000700000005000000020000000500000000135D450100000000050000F8135D8103050000FE0000000A135D4509000000040000000A00000001135D450300000001050000FE135D810904548A050000000A0000000500000004135D450900000004000000050000000212073CFA0000000208A912FD12073D06050000F6135D8101050000F80000000A135D450300000001050000FE135D81090CFD9C050000000A0000000500000004135D4509000000040000000A00000000135D450100000000050000F80000000A135D450300000001050000FE135D81090CFD9C050000000A00000005000000040000000A0000000300000005"
theorem small_3248197_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3248197_right_root small_3248197_right_fuel small_3248197_right_count small_3248197_right_encoded = true := by
  decide +kernel
theorem small_3248197_right_covered : CoveredBy scale carrier boxes small_3248197_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3248197_right_root small_3248197_right_fuel small_3248197_right_count small_3248197_right_encoded small_3248197_right_checked

theorem cover_3248197 : CoveredBy scale carrier boxes root_3248197 := by
  apply coveredBy_split_literal root_3248197 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.root_3248198 small_3248197_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.cover_3248198
  · exact small_3248197_right_covered
#print axioms cover_3248197

def root_3248191 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3248191_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3248191_left_fuel : Nat := 1
def small_3248191_left_count : Nat := 1
def small_3248191_left_encoded : String := "00000003"
theorem small_3248191_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3248191_left_root small_3248191_left_fuel small_3248191_left_count small_3248191_left_encoded = true := by
  decide +kernel
theorem small_3248191_left_covered : CoveredBy scale carrier boxes small_3248191_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3248191_left_root small_3248191_left_fuel small_3248191_left_count small_3248191_left_encoded small_3248191_left_checked

theorem cover_3248191 : CoveredBy scale carrier boxes root_3248191 := by
  apply coveredBy_split_literal root_3248191 small_3248191_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.root_3248197 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_3248191_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.cover_3248197
#print axioms cover_3248191

def root_3248103 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3248103_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3248103_left_fuel : Nat := 15
def small_3248103_left_count : Nat := 43
def small_3248103_left_encoded : String := "1151E8FD0A0000FE1152250908A91305120700FA08A91309120700FE050000F6000000070000000600000004000000070000000212073CFA0000000208A913090000000812073CFE00000004050000F6135D8101050000F8000000080000000800000000135D450100000000050000F80000000A135D4503000000010500010600000008135D80FD000000030CFD9C050000000A00000008000000041151E909000000040000000A00000003"
theorem small_3248103_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3248103_left_root small_3248103_left_fuel small_3248103_left_count small_3248103_left_encoded = true := by
  decide +kernel
theorem small_3248103_left_covered : CoveredBy scale carrier boxes small_3248103_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3248103_left_root small_3248103_left_fuel small_3248103_left_count small_3248103_left_encoded small_3248103_left_checked

theorem cover_3248103 : CoveredBy scale carrier boxes root_3248103 := by
  apply coveredBy_split_literal root_3248103 small_3248103_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.root_3248191 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3248103_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.cover_3248191
#print axioms cover_3248103

def root_3248098 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3248098_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3248098_right_fuel : Nat := 1
def small_3248098_right_count : Nat := 1
def small_3248098_right_encoded : String := "00000002"
theorem small_3248098_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3248098_right_root small_3248098_right_fuel small_3248098_right_count small_3248098_right_encoded = true := by
  decide +kernel
theorem small_3248098_right_covered : CoveredBy scale carrier boxes small_3248098_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3248098_right_root small_3248098_right_fuel small_3248098_right_count small_3248098_right_encoded small_3248098_right_checked

theorem cover_3248098 : CoveredBy scale carrier boxes root_3248098 := by
  apply coveredBy_split_literal root_3248098 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.root_3248103 small_3248098_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.cover_3248103
  · exact small_3248098_right_covered
#print axioms cover_3248098

def root_3248097 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3248097_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3248097_right_fuel : Nat := 26
def small_3248097_right_count : Nat := 169
def small_3248097_right_encoded : String := "1151E905000000020A0001061151E8FD0A0000FE000000080000000800000003115224FD000000030A0000FE1152250908A912FD12073D0608A91309120700FE050000F6135D8101050000F8135D8103050000FA00000008135D45050000000200000008000000010000000800000000135D450100000000050000F8135D8103050000FA00000006135D4505000000020000000600000001000000080000000412073CFE00000004050000F600000008135D450100000000050000F8135D8103050000FA135D81050CFD9BFD0F350D0600000008000000030000000500000002135D4505000000020000000800000001135D450300000001050000FA135D81050CFD9BFD0000000800000005000000020000000800000003120701060000000308A91309120700FE050000F6135D8101050000F8135D8103050000FA135D8105045489FD1386AD0604548A09000000080000000800000003138671060000000304548A09138670FE078000F6128A7D010000000800000000128A410100000000078000F8128A7D03078000FA00000007128A410500000002000000050000000100000008000000040000000500000002135D450500000002045489FD1386AD0604548A090000000800000005000000030000000500000001135D450300000001050000FA00000008135D4505000000020000000800000000135D450100000000050000F8135D8103050000FA135D8105045489FD1386AD0604548A090000000600000005000000030000000500000002135D450500000002045489FD1386AD0604548A09138670FE000000060000000400000005000000030000000500000001135D450300000001050000FA135D8105045489FD000000080000000500000002135D450500000002000000050000000400000005000000041151E9090000000400000005"
theorem small_3248097_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3248097_right_root small_3248097_right_fuel small_3248097_right_count small_3248097_right_encoded = true := by
  decide +kernel
theorem small_3248097_right_covered : CoveredBy scale carrier boxes small_3248097_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3248097_right_root small_3248097_right_fuel small_3248097_right_count small_3248097_right_encoded small_3248097_right_checked

theorem cover_3248097 : CoveredBy scale carrier boxes root_3248097 := by
  apply coveredBy_split_literal root_3248097 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.root_3248098 small_3248097_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.cover_3248098
  · exact small_3248097_right_covered
#print axioms cover_3248097

def root_3248091 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3248091_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3248091_left_fuel : Nat := 1
def small_3248091_left_count : Nat := 1
def small_3248091_left_encoded : String := "00000001"
theorem small_3248091_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3248091_left_root small_3248091_left_fuel small_3248091_left_count small_3248091_left_encoded = true := by
  decide +kernel
theorem small_3248091_left_covered : CoveredBy scale carrier boxes small_3248091_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3248091_left_root small_3248091_left_fuel small_3248091_left_count small_3248091_left_encoded small_3248091_left_checked

theorem cover_3248091 : CoveredBy scale carrier boxes root_3248091 := by
  apply coveredBy_split_literal root_3248091 small_3248091_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.root_3248097 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_3248091_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.cover_3248097
#print axioms cover_3248091

def root_3241613 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3241613 : CoveredBy scale carrier boxes root_3241613 := by
  apply coveredBy_split_literal root_3241613 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0077.root_3241614 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.root_3248091 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0077.cover_3241614
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.cover_3248091
#print axioms cover_3241613

def root_3241607 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3241607_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3241607_left_fuel : Nat := 1
def small_3241607_left_count : Nat := 1
def small_3241607_left_encoded : String := "00000000"
theorem small_3241607_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3241607_left_root small_3241607_left_fuel small_3241607_left_count small_3241607_left_encoded = true := by
  decide +kernel
theorem small_3241607_left_covered : CoveredBy scale carrier boxes small_3241607_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3241607_left_root small_3241607_left_fuel small_3241607_left_count small_3241607_left_encoded small_3241607_left_checked

theorem cover_3241607 : CoveredBy scale carrier boxes root_3241607 := by
  apply coveredBy_split_literal root_3241607 small_3241607_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.root_3241613 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_3241607_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.cover_3241613
#print axioms cover_3241607

def root_3225651 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3225651 : CoveredBy scale carrier boxes root_3225651 := by
  apply coveredBy_split_literal root_3225651 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0077.root_3225652 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.root_3241607 coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0077.cover_3225652
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.cover_3241607
#print axioms cover_3225651

def root_3218221 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3218221 : CoveredBy scale carrier boxes root_3218221 := by
  apply coveredBy_split_literal root_3218221 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.root_3218222 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.root_3225651 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0076.cover_3218222
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.cover_3225651
#print axioms cover_3218221

def root_3264746 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3264746_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3264746_left_fuel : Nat := 20
def small_3264746_left_count : Nat := 269
def small_3264746_left_encoded : String := "1151E8FD0A0001081151E9090000000408A91301120700F608A91305120700FA050000F8135D810305000106135D44FD00000005000000030000000500000001000000050000000212073CFA00000002050000F800000009135D45030000000105000106135D44FD0000000900000003000000090000000012073CF60000000008A91305120700FA050000F8135D810305000106135D44FD05000108000000070000000800000003135D80FD0000000305000108135D4509000000040CFD9C010F34D0F6000000070000000000000007135D81090CFD9C0100000005000000080000000400000001000000070000000212073CFA00000002050000F8135D810305000106135D44FD05000108000000080000000900000003135D80FD000000030000000800000001135D45030000000105000106135D44FD050001080000000A135D81090CFD9C010F34D0F60000000900000000000000080000000400000003135D80FD000000030500010800000008135D81090CFD9C010F34D0F6000000090000000000000008000000041152250908A91301120700F608A913050000000512073CFA0000000208A913090000000512073D08050000F800000009135D4503000000010500010600000005135D80FD0000000304548A010000000500000009000000040000000012073CF60000000008A91305120700FA08A913090000000512073D08050000F8135D81030000000500000001135D4503000000010500010600000005135D80FD000000030CFD9C01000000050F350CF60000000004548A05000000051386ACFA000000020CFD9C09000000050F350D080000000800000004000000040000000212073CFA0000000208A913091207010800000004050000F8135D810305000106135D44FD0000000500000003135D80FD000000030CFD9C01000000050000000900000001135D45030000000105000106135D44FD0CFD9C01000000050F350CF6000000000CFD9C05000000050000000900000003135D80FD000000030CFD9C010F34D0F600000005000000000F350CF6000000000CFD9C050F34D0FA00000005000000020F350CFA000000020000000912073D08050000F8135D810305000106135D44FD0CFD9C010F34D0F600000009000000000000000900000003135D80FD000000030CFD9C010F34D0F600000009000000000F350CF6000000000CFD9C05000000080000000900000001135D45030000000105000106135D44FD0CFD9C010F34D0F600000009000000000F350CF6000000000CFD9C050F34D0FA0CFD9C090000000500000009000000020F350CFA000000020000000900000003135D80FD000000030CFD9C010F34D0F60CFD9C050F34D0FA000000090000000200000009000000000F350CF6000000000CFD9C050F34D0FA0CFD9C090F34D10800000004000000090F350D080000000800000004000000020F350CFA0000000200000009000000040000000400000003"
theorem small_3264746_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3264746_left_root small_3264746_left_fuel small_3264746_left_count small_3264746_left_encoded = true := by
  decide +kernel
theorem small_3264746_left_covered : CoveredBy scale carrier boxes small_3264746_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3264746_left_root small_3264746_left_fuel small_3264746_left_count small_3264746_left_encoded small_3264746_left_checked

theorem cover_3264746 : CoveredBy scale carrier boxes root_3264746 := by
  apply coveredBy_split_literal root_3264746 small_3264746_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1249.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3264746_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1249.covered
#print axioms cover_3264746

def root_3264741 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3264741_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3264741_right_fuel : Nat := 1
def small_3264741_right_count : Nat := 1
def small_3264741_right_encoded : String := "00000002"
theorem small_3264741_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3264741_right_root small_3264741_right_fuel small_3264741_right_count small_3264741_right_encoded = true := by
  decide +kernel
theorem small_3264741_right_covered : CoveredBy scale carrier boxes small_3264741_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3264741_right_root small_3264741_right_fuel small_3264741_right_count small_3264741_right_encoded small_3264741_right_checked

theorem cover_3264741 : CoveredBy scale carrier boxes root_3264741 := by
  apply coveredBy_split_literal root_3264741 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.root_3264746 small_3264741_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.cover_3264746
  · exact small_3264741_right_covered
#print axioms cover_3264741

def root_3264740 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3264740_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3264740_right_fuel : Nat := 17
def small_3264740_right_count : Nat := 91
def small_3264740_right_encoded : String := "1151E905000000020A0001061151E8FD0A0001081151E9090000000408A9130100000009000000091152250908A91301120700F6000000090000000012073CF60000000008A91309120701080000000400000009000000090000000400000003115224FD000000030A0001081151E9090000000408A91301120700F6000000090000000012073CF60000000008A912FD00000008000000051152250908A91301120700F608A912FD12073D0608A913091207010800000004000000090000000900000003120701060000000308A9130900000008000000090000000012073CF60000000008A912FD12073D0608A913091207010800000004050000F800000007135D450300000001050000FA135D81050CFD9C010000000700000008000000020000000912073D08050000F800000009135D450300000001050000FA135D81050CFD9C0100000009000000090000000200000009000000040000000312070106000000030000000800000004"
theorem small_3264740_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3264740_right_root small_3264740_right_fuel small_3264740_right_count small_3264740_right_encoded = true := by
  decide +kernel
theorem small_3264740_right_covered : CoveredBy scale carrier boxes small_3264740_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3264740_right_root small_3264740_right_fuel small_3264740_right_count small_3264740_right_encoded small_3264740_right_checked

theorem cover_3264740 : CoveredBy scale carrier boxes root_3264740 := by
  apply coveredBy_split_literal root_3264740 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.root_3264741 small_3264740_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.cover_3264741
  · exact small_3264740_right_covered
#print axioms cover_3264740

def root_3264734 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3264734_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3264734_left_fuel : Nat := 1
def small_3264734_left_count : Nat := 1
def small_3264734_left_encoded : String := "00000001"
theorem small_3264734_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3264734_left_root small_3264734_left_fuel small_3264734_left_count small_3264734_left_encoded = true := by
  decide +kernel
theorem small_3264734_left_covered : CoveredBy scale carrier boxes small_3264734_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3264734_left_root small_3264734_left_fuel small_3264734_left_count small_3264734_left_encoded small_3264734_left_checked

theorem cover_3264734 : CoveredBy scale carrier boxes root_3264734 := by
  apply coveredBy_split_literal root_3264734 small_3264734_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.root_3264740 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_3264734_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.cover_3264740
#print axioms cover_3264734

def root_3263556 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3263556 : CoveredBy scale carrier boxes root_3263556 := by
  apply coveredBy_split_literal root_3263556 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1248.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.root_3264734 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1248.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.cover_3264734
#print axioms cover_3263556

def root_3263551 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3263551_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3263551_right_fuel : Nat := 1
def small_3263551_right_count : Nat := 1
def small_3263551_right_encoded : String := "00000000"
theorem small_3263551_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3263551_right_root small_3263551_right_fuel small_3263551_right_count small_3263551_right_encoded = true := by
  decide +kernel
theorem small_3263551_right_covered : CoveredBy scale carrier boxes small_3263551_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3263551_right_root small_3263551_right_fuel small_3263551_right_count small_3263551_right_encoded small_3263551_right_checked

theorem cover_3263551 : CoveredBy scale carrier boxes root_3263551 := by
  apply coveredBy_split_literal root_3263551 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.root_3263556 small_3263551_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.cover_3263556
  · exact small_3263551_right_covered
#print axioms cover_3263551

def root_3269454 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3269454_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3269454_left_fuel : Nat := 17
def small_3269454_left_count : Nat := 135
def small_3269454_left_encoded : String := "1151E8FD0A0001081151E9090000000408A91305120700FA050000F6000000070000000A000000020000000A1152250908A91305120700FA08A913091207010800000004050000F6000000050000000612073D08050000F6135D8101050000F8135D81030500010600000008135D80FD000000030000000800000001135D4503000000010500010600000008135D80FD0000000304548A05138670FA0CFD9C090000000500000007000000020000000800000000135D450100000000050000F8135D81030500010600000008135D80FD0000000304548A050000000A0000000600000001135D4503000000010500010600000008135D80FD0000000304548A05138670FA0CFD9C090000000600000007000000021386ACFA000000020000000A000000040000000212073CFA0000000208A913091207010800000004050000F6135D8101050000F800000008135D45030000000105000106135D44FD0CFD9C05000000080F350CFA0000000200000008000000030000000800000000135D450100000000050000F800000006135D4503000000010000000812073D08050000F6135D8101050000F800000008135D45030000000105000106135D44FD0CFD9C05000000080000000A00000003135D80FD000000030CFD9C05000000080F350CFA000000020000000800000000135D450100000000050000F800000008135D450300000001050001060000000800000008000000040000000400000003"
theorem small_3269454_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3269454_left_root small_3269454_left_fuel small_3269454_left_count small_3269454_left_encoded = true := by
  decide +kernel
theorem small_3269454_left_covered : CoveredBy scale carrier boxes small_3269454_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3269454_left_root small_3269454_left_fuel small_3269454_left_count small_3269454_left_encoded small_3269454_left_checked

theorem cover_3269454 : CoveredBy scale carrier boxes root_3269454 := by
  apply coveredBy_split_literal root_3269454 small_3269454_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1251.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3269454_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1251.covered
#print axioms cover_3269454

def root_3269449 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3269449_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3269449_right_fuel : Nat := 1
def small_3269449_right_count : Nat := 1
def small_3269449_right_encoded : String := "00000002"
theorem small_3269449_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3269449_right_root small_3269449_right_fuel small_3269449_right_count small_3269449_right_encoded = true := by
  decide +kernel
theorem small_3269449_right_covered : CoveredBy scale carrier boxes small_3269449_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3269449_right_root small_3269449_right_fuel small_3269449_right_count small_3269449_right_encoded small_3269449_right_checked

theorem cover_3269449 : CoveredBy scale carrier boxes root_3269449 := by
  apply coveredBy_split_literal root_3269449 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.root_3269454 small_3269449_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.cover_3269454
  · exact small_3269449_right_covered
#print axioms cover_3269449

def root_3269448 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3269448_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3269448_right_fuel : Nat := 9
def small_3269448_right_count : Nat := 29
def small_3269448_right_encoded : String := "1151E905000000020A0001061151E8FD0A000108000000081152250908A913091207010800000004000000090000000A0000000400000003115224FD000000030A0001081151E90900000004000000051152250908A912FD12073D0608A913090000000800000008000000030000000800000004"
theorem small_3269448_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3269448_right_root small_3269448_right_fuel small_3269448_right_count small_3269448_right_encoded = true := by
  decide +kernel
theorem small_3269448_right_covered : CoveredBy scale carrier boxes small_3269448_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3269448_right_root small_3269448_right_fuel small_3269448_right_count small_3269448_right_encoded small_3269448_right_checked

theorem cover_3269448 : CoveredBy scale carrier boxes root_3269448 := by
  apply coveredBy_split_literal root_3269448 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.root_3269449 small_3269448_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.cover_3269449
  · exact small_3269448_right_covered
#print axioms cover_3269448

def root_3269442 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3269442_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3269442_left_fuel : Nat := 1
def small_3269442_left_count : Nat := 1
def small_3269442_left_encoded : String := "00000001"
theorem small_3269442_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3269442_left_root small_3269442_left_fuel small_3269442_left_count small_3269442_left_encoded = true := by
  decide +kernel
theorem small_3269442_left_covered : CoveredBy scale carrier boxes small_3269442_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3269442_left_root small_3269442_left_fuel small_3269442_left_count small_3269442_left_encoded small_3269442_left_checked

theorem cover_3269442 : CoveredBy scale carrier boxes root_3269442 := by
  apply coveredBy_split_literal root_3269442 small_3269442_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.root_3269448 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_3269442_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.cover_3269448
#print axioms cover_3269442

def root_3268234 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3268234 : CoveredBy scale carrier boxes root_3268234 := by
  apply coveredBy_split_literal root_3268234 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1250.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.root_3269442 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1250.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.cover_3269442
#print axioms cover_3268234

def root_3268228 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3268228_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3268228_left_fuel : Nat := 1
def small_3268228_left_count : Nat := 1
def small_3268228_left_encoded : String := "00000000"
theorem small_3268228_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3268228_left_root small_3268228_left_fuel small_3268228_left_count small_3268228_left_encoded = true := by
  decide +kernel
theorem small_3268228_left_covered : CoveredBy scale carrier boxes small_3268228_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3268228_left_root small_3268228_left_fuel small_3268228_left_count small_3268228_left_encoded small_3268228_left_checked

theorem cover_3268228 : CoveredBy scale carrier boxes root_3268228 := by
  apply coveredBy_split_literal root_3268228 small_3268228_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.root_3268234 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_3268228_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.cover_3268234
#print axioms cover_3268228

def root_3263550 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3263550 : CoveredBy scale carrier boxes root_3263550 := by
  apply coveredBy_split_literal root_3263550 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.root_3263551 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.root_3268228 coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.cover_3263551
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.cover_3268228
#print axioms cover_3263550

def root_3262202 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3262202 : CoveredBy scale carrier boxes root_3262202 := by
  apply coveredBy_split_literal root_3262202 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1247.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.root_3263550 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1247.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.cover_3263550
#print axioms cover_3262202

def root_3218220 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3218220 : CoveredBy scale carrier boxes root_3218220 := by
  apply coveredBy_split_literal root_3218220 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.root_3218221 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.root_3262202 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.cover_3218221
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.cover_3262202
#print axioms cover_3218220

def root_3274575 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3274575_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3274575_left_fuel : Nat := 20
def small_3274575_left_count : Nat := 153
def small_3274575_left_encoded : String := "120700F808A91305120700FA08A91307120701060000000308A912FF12073CFE000000040CFD9C01000000050F350CF60000000004548A03000000051386ACF80000000104548A050000000500000007120700FE0CFD9C010F34D0F604548A03000000091386ACF80000000104548A05138670FA04548A071386710600000003000000051386AD06045489FF0000000700000007000000030000000200000009000000000F350CF60000000004548A03138670F800000007000000011386ACF80000000104548A05138670FA04548A071386710600000003045489FF00000005138670FE0C9A86F60F878D01000000050000000000000005000000040000000700000002000000070000000412073D0608A912FF12073CFE0000000400000007120700FE0CFD9C01000000070000000700000004000000030000000212073CFA0000000208A91307120701060000000308A912FF12073CFE000000040CFD9C010F34D0F604548A03138670F80CFD9C050000000500000007000000011386ACF8000000010CFD9C050F34D0FA00000007000000020F350CFA0000000204548A07000000051386AD060000000700000003000000000F350CF60000000000000007120700FE0CFD9C010F34D0F600000009000000000F350CF60000000004548A03000000071386ACF8000000010CFD9C050F34D0FA0000000700000002000000070000000412073D0608A912FF12073CFE000000040CFD9C010F34D0F604548A03000000071386ACF8000000010CFD9C050F34D0FA00000007000000020F350CFA000000020CFD9C0700000007000000070000000000000007000000070000000300000001"
theorem small_3274575_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3274575_left_root small_3274575_left_fuel small_3274575_left_count small_3274575_left_encoded = true := by
  decide +kernel
theorem small_3274575_left_covered : CoveredBy scale carrier boxes small_3274575_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3274575_left_root small_3274575_left_fuel small_3274575_left_count small_3274575_left_encoded small_3274575_left_checked

theorem cover_3274575 : CoveredBy scale carrier boxes root_3274575 := by
  apply coveredBy_split_literal root_3274575 small_3274575_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1253.root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3274575_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1253.covered
#print axioms cover_3274575

def root_3274569 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3274569_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3274569_left_fuel : Nat := 1
def small_3274569_left_count : Nat := 1
def small_3274569_left_encoded : String := "00000000"
theorem small_3274569_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3274569_left_root small_3274569_left_fuel small_3274569_left_count small_3274569_left_encoded = true := by
  decide +kernel
theorem small_3274569_left_covered : CoveredBy scale carrier boxes small_3274569_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3274569_left_root small_3274569_left_fuel small_3274569_left_count small_3274569_left_encoded small_3274569_left_checked

theorem cover_3274569 : CoveredBy scale carrier boxes root_3274569 := by
  apply coveredBy_split_literal root_3274569 small_3274569_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.root_3274575 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_3274569_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.cover_3274575
#print axioms cover_3274569

def root_3273097 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3273097 : CoveredBy scale carrier boxes root_3273097 := by
  apply coveredBy_split_literal root_3273097 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1252.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.root_3274569 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1252.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.cover_3274569
#print axioms cover_3273097

def root_3273091 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3273091_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3273091_left_fuel : Nat := 1
def small_3273091_left_count : Nat := 1
def small_3273091_left_encoded : String := "00000004"
theorem small_3273091_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3273091_left_root small_3273091_left_fuel small_3273091_left_count small_3273091_left_encoded = true := by
  decide +kernel
theorem small_3273091_left_covered : CoveredBy scale carrier boxes small_3273091_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3273091_left_root small_3273091_left_fuel small_3273091_left_count small_3273091_left_encoded small_3273091_left_checked

theorem cover_3273091 : CoveredBy scale carrier boxes root_3273091 := by
  apply coveredBy_split_literal root_3273091 small_3273091_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.root_3273097 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_3273091_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.cover_3273097
#print axioms cover_3273091

def root_3273090 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3273090_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3273090_right_fuel : Nat := 17
def small_3273090_right_count : Nat := 127
def small_3273090_right_encoded : String := "1151E8FF08A91301120700F608A91303120700F808A913050000000512073CFA0000000208A913070000000512073D06050000FE135D80FF0000000404548A01000000051386ACF60000000004548A03000000051386ACF8000000010CFD9C05000000050000000A00000005000000030000000112073CF80000000108A91305120700FA08A91307000000050000000A0000000212073CFA0000000208A913071207010600000003000000050000000A0000000012073CF60000000008A91303120700F808A91305120700FA08A9130700000005000000070000000212073CFA0000000208A9130712070106000000030000000512073D06050000FE135D80FF000000040CFD9C010F34D0F604548A03000000071386ACF8000000010CFD9C0500000007000000070000000000000007135D44FF0CFD9C01000000050000000700000004000000030000000112073CF80000000108A91305120700FA08A913071207010600000003000000050000000A0000000212073CFA0000000208A913071207010600000003050000FE135D80FF000000040CFD9C01000000050000000A0000000512073D06050000FE135D80FF000000040CFD9C010F34D0F60000000A000000000F350CF6000000000CFD9C03000000070000000A135D44FF0CFD9C010F34D0F60000000A000000000000000A000000040000000300000004"
theorem small_3273090_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3273090_right_root small_3273090_right_fuel small_3273090_right_count small_3273090_right_encoded = true := by
  decide +kernel
theorem small_3273090_right_covered : CoveredBy scale carrier boxes small_3273090_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3273090_right_root small_3273090_right_fuel small_3273090_right_count small_3273090_right_encoded small_3273090_right_checked

theorem cover_3273090 : CoveredBy scale carrier boxes root_3273090 := by
  apply coveredBy_split_literal root_3273090 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.root_3273091 small_3273090_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.cover_3273091
  · exact small_3273090_right_covered
#print axioms cover_3273090

def root_3273085 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3273085_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3273085_right_fuel : Nat := 1
def small_3273085_right_count : Nat := 1
def small_3273085_right_encoded : String := "00000003"
theorem small_3273085_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3273085_right_root small_3273085_right_fuel small_3273085_right_count small_3273085_right_encoded = true := by
  decide +kernel
theorem small_3273085_right_covered : CoveredBy scale carrier boxes small_3273085_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3273085_right_root small_3273085_right_fuel small_3273085_right_count small_3273085_right_encoded small_3273085_right_checked

theorem cover_3273085 : CoveredBy scale carrier boxes root_3273085 := by
  apply coveredBy_split_literal root_3273085 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.root_3273090 small_3273085_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.cover_3273090
  · exact small_3273085_right_covered
#print axioms cover_3273085

def root_3272707 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3272707_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3272707_left_fuel : Nat := 21
def small_3272707_left_count : Nat := 177
def small_3272707_left_encoded : String := "1151E907000000030A0000FE115224FF0000000408A91301120700F608A91303120700F808A91305120700FA000000070000000212073CFA0000000208A912FF12073CFE000000040500010600000007135D810704548A01138670F604548A03000000071386ACF80000000100000007000000000000000700000003000000070000000112073CF80000000108A91305120700FA08A912FF12073CFE00000004050001060000000700000007120700FE0500010600000007135D810704548A01000000060000000700000003000000040000000212073CFA0000000208A912FF12073CFE0000000405000106135D45070000000304548A01138670F60CFD9C03000000070F350CF800000001000000070000000000000007135D810704548A01138670F60CFD9C030F34D0F80CFD9C050F34D0FA00000007000000020F350CFA000000020CFD9BFF0000000A00000007000000010F350CF8000000010000000A000000001386ACF6000000000CFD9C03000000070F350CF8000000010000000A00000003120700FE050001060000000700000007000000040000000012073CF60000000008A91303120700F8000000070000000112073CF80000000108A91305120700FA08A912FF12073CFE0000000400000007120700FE05000106135D45070000000300000007135D81070CFD9C01000000070000000700000003000000040000000212073CFA0000000208A912FF12073CFE0000000400000007000000071151E8FF08A91301120700F608A91303120700F808A913050000000712073CFA000000020500010600000007135D8107050000FE135D80FF000000040000000700000007000000030000000112073CF80000000108A913050000000A0000000A0000000012073CF60000000008A913030000000712073CF80000000108A913050000000712073CFA000000020500010600000007135D8107000000070000000300000004"
theorem small_3272707_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3272707_left_root small_3272707_left_fuel small_3272707_left_count small_3272707_left_encoded = true := by
  decide +kernel
theorem small_3272707_left_covered : CoveredBy scale carrier boxes small_3272707_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3272707_left_root small_3272707_left_fuel small_3272707_left_count small_3272707_left_encoded small_3272707_left_checked

theorem cover_3272707 : CoveredBy scale carrier boxes root_3272707 := by
  apply coveredBy_split_literal root_3272707 small_3272707_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.root_3273085 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3272707_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.cover_3273085
#print axioms cover_3272707

def root_3272702 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3272702_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3272702_right_fuel : Nat := 1
def small_3272702_right_count : Nat := 1
def small_3272702_right_encoded : String := "00000002"
theorem small_3272702_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3272702_right_root small_3272702_right_fuel small_3272702_right_count small_3272702_right_encoded = true := by
  decide +kernel
theorem small_3272702_right_covered : CoveredBy scale carrier boxes small_3272702_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3272702_right_root small_3272702_right_fuel small_3272702_right_count small_3272702_right_encoded small_3272702_right_checked

theorem cover_3272702 : CoveredBy scale carrier boxes root_3272702 := by
  apply coveredBy_split_literal root_3272702 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.root_3272707 small_3272702_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.cover_3272707
  · exact small_3272702_right_covered
#print axioms cover_3272702

def root_3280481 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3280481_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3280481_left_fuel : Nat := 19
def small_3280481_left_count : Nat := 191
def small_3280481_left_encoded : String := "120700F808A91307120701060000000308A912FF12073CFE00000004050000FA135D81050CFD9C010F34D0F604548A03000000051386ACF80000000104548A07000000051386AD060CFD9BFF000000050F34D0FE000000070000000400000003000000000F350CF60000000004548A03000000051386ACF80000000104548A07000000050000000700000002135D4505000000020CFD9C01000000050F350CF60000000004548A03000000051386ACF80000000104548A07000000051386AD060CFD9BFF000000050000000700000003120700FE050000FA135D81050CFD9C01000000090000000700000002135D4505000000020CFD9C01000000090F350CF600000000000000070000000412073D0608A912FF12073CFE00000004050000FA135D81050CFD9C010F34D0F604548A03138670F80CFD9C070000000700000007000000011386ACF8000000010CFD9C070F34D106000000030CFD9BFF0F350CFE000000040C9A86FE0000000700000005000000070F350D060CFD9BFF0F350CFE00000004000000070000000700000003000000000F350CF60000000004548A03000000071386ACF8000000010CFD9C07000000070000000700000002135D4505000000020CFD9C010F34D0F604548A03138670F80CFD9C070F34D106000000030CFD9BFF000000050000000700000008000000011386ACF8000000010CFD9C070F34D106000000030CFD9BFF000000050F34D0FE028000FA0000000713D7B105000000020AD357810000000900000007000000040F350D060CFD9BFF000000080F34D0FE000000070000000400000003000000000F350CF60000000004548A03138670F80CFD9C070000000700000008000000011386ACF8000000010CFD9C070F34D106000000030CFD9BFF0F350CFE000000040C9A86F60000000700000007000000070F350D060000000800000003120700FE050000FA00000007135D4505000000020CFD9C010F34D0F604548A03000000071386ACF8000000010CFD9C0700000007000000060000000000000007000000040000000300000001"
theorem small_3280481_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3280481_left_root small_3280481_left_fuel small_3280481_left_count small_3280481_left_encoded = true := by
  decide +kernel
theorem small_3280481_left_covered : CoveredBy scale carrier boxes small_3280481_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3280481_left_root small_3280481_left_fuel small_3280481_left_count small_3280481_left_encoded small_3280481_left_checked

theorem cover_3280481 : CoveredBy scale carrier boxes root_3280481 := by
  apply coveredBy_split_literal root_3280481 small_3280481_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1255.root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_3280481_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1255.covered
#print axioms cover_3280481

def root_3280475 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3280475_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3280475_left_fuel : Nat := 1
def small_3280475_left_count : Nat := 1
def small_3280475_left_encoded : String := "00000000"
theorem small_3280475_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3280475_left_root small_3280475_left_fuel small_3280475_left_count small_3280475_left_encoded = true := by
  decide +kernel
theorem small_3280475_left_covered : CoveredBy scale carrier boxes small_3280475_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3280475_left_root small_3280475_left_fuel small_3280475_left_count small_3280475_left_encoded small_3280475_left_checked

theorem cover_3280475 : CoveredBy scale carrier boxes root_3280475 := by
  apply coveredBy_split_literal root_3280475 small_3280475_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.root_3280481 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_3280475_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.cover_3280481
#print axioms cover_3280475

def root_3279139 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3279139 : CoveredBy scale carrier boxes root_3279139 := by
  apply coveredBy_split_literal root_3279139 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1254.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.root_3280475 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1254.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.cover_3280475
#print axioms cover_3279139

def root_3279133 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3279133_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3279133_left_fuel : Nat := 1
def small_3279133_left_count : Nat := 1
def small_3279133_left_encoded : String := "00000004"
theorem small_3279133_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3279133_left_root small_3279133_left_fuel small_3279133_left_count small_3279133_left_encoded = true := by
  decide +kernel
theorem small_3279133_left_covered : CoveredBy scale carrier boxes small_3279133_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3279133_left_root small_3279133_left_fuel small_3279133_left_count small_3279133_left_encoded small_3279133_left_checked

theorem cover_3279133 : CoveredBy scale carrier boxes root_3279133 := by
  apply coveredBy_split_literal root_3279133 small_3279133_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.root_3279139 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_3279133_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.cover_3279139
#print axioms cover_3279133

def root_3279132 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3279132_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3279132_right_fuel : Nat := 19
def small_3279132_right_count : Nat := 201
def small_3279132_right_encoded : String := "1151E8FF08A91301120700F608A913030000000512073CF80000000108A913070000000512073D06050000FA135D8105050000FE135D80FF0000000404548A010000000A0000000A0000000A00000002135D450500000002050000FE135D80FF0000000404548A01000000051386ACF6000000000CFD9C03000000050000000A135D44FF0000000500000004000000030000000012073CF60000000008A91303120700F808A913070000000512073D06050000FA135D8105050000FE135D80FF000000040CFD9C010F34D0F604548A03000000051386ACF8000000010CFD9C07000000050F350D060000000700000003000000000F350CF60000000000000007135D44FF0CFD9C01000000050F350CF600000000000000050000000400000002135D450500000002050000FE135D80FF000000040CFD9C01000000050F350CF60000000004548A03000000051386ACF8000000010CFD9C070000000500000008135D44FF0000000500000004000000030000000112073CF80000000108A913071207010600000003050000FA135D81050000000500000002135D450500000002050000FE00000005135D44FF000000050000000412073D06050000FA135D8105050000FE135D80FF000000040CFD9C010F34D0F60000000A000000000F350CF6000000000CFD9C030F34D0F80CFD9C070000000700000007000000010000000A135D44FF0CFD9C010F34D0F60000000A000000000000000A0000000400000002135D450500000002050000FE135D80FF000000040CFD9C010F34D0F60CFD9C030F34D0F80CFD9C07000000050F350D060000000A00000003000000010F350CF8000000010000000A000000000F350CF6000000000CFD9C030F34D0F80CFD9C070F34D10600000003000000050F350D060C9A86F6000000080000000700000003000000010F350CF8000000010CFD9C070F34D106000000030000000A0000000A135D44FF0CFD9C010F34D0F60CFD9C03000000050000000A000000000F350CF6000000000CFD9C030F34D0F80CFD9C07000000050F350D060C9A86F6000000070000000700000003000000010F350CF8000000010000000A000000040000000300000004"
theorem small_3279132_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3279132_right_root small_3279132_right_fuel small_3279132_right_count small_3279132_right_encoded = true := by
  decide +kernel
theorem small_3279132_right_covered : CoveredBy scale carrier boxes small_3279132_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3279132_right_root small_3279132_right_fuel small_3279132_right_count small_3279132_right_encoded small_3279132_right_checked

theorem cover_3279132 : CoveredBy scale carrier boxes root_3279132 := by
  apply coveredBy_split_literal root_3279132 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.root_3279133 small_3279132_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.cover_3279133
  · exact small_3279132_right_covered
#print axioms cover_3279132

def root_3279127 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3279127_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3279127_right_fuel : Nat := 1
def small_3279127_right_count : Nat := 1
def small_3279127_right_encoded : String := "00000003"
theorem small_3279127_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3279127_right_root small_3279127_right_fuel small_3279127_right_count small_3279127_right_encoded = true := by
  decide +kernel
theorem small_3279127_right_covered : CoveredBy scale carrier boxes small_3279127_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3279127_right_root small_3279127_right_fuel small_3279127_right_count small_3279127_right_encoded small_3279127_right_checked

theorem cover_3279127 : CoveredBy scale carrier boxes root_3279127 := by
  apply coveredBy_split_literal root_3279127 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.root_3279132 small_3279127_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.cover_3279132
  · exact small_3279127_right_covered
#print axioms cover_3279127

def root_3278161 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3278161_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3278161_left_fuel : Nat := 25
def small_3278161_left_count : Nat := 453
def small_3278161_left_encoded : String := "1151E907000000030A0000FE115224FF0000000408A91301120700F608A91303120700F808A912FF12073CFE00000004050000FA135D81050500010600000007135D810704548A01138670F604548A03000000061386ACF8000000010CFD9BFF0F350CFE00000004000000060000000600000000000000070000000300000002135D4505000000020500010600000008135D810704548A01000000060000000800000003120700FE00000007000000040000000112073CF80000000108A912FF12073CFE00000004050000FA135D810505000106135D45070000000304548A01138670F60CFD9C03000000070F350CF8000000010CFD9BFF0000000A000000070000000000000007135D810704548A01138670F60CFD9C030F34D0F80CFD9BFF0F350CFE000000040000000A00000006000000010F350CF8000000010000000A000000001386ACF6000000000CFD9C030F34D0F80CFD9BFF0F350CFE000000040000000700000007000000010F350CF8000000010CFD9BFF0000000A000000070000000300000002135D45050000000205000106135D45070000000304548A01138670F60CFD9C030F34D0F80CFD9BFF0000000800000007000000010F350CF8000000010CFD9BFF0F350CFE000000040C9A86F80000000A000000090F34D0FE0C9A86F80F878D0300000007000000010000000700000004000000001386ACF6000000000CFD9C030F34D0F800000008000000010F350CF8000000010CFD9BFF0000000900000007135D810704548A01138670F60CFD9C030F34D0F80CFD9BFF0F350CFE000000040000000600000006000000010F350CF8000000010CFD9BFF0F350CFE000000040000000A0F34D0FE0C9A86F80F878D03028000FA13D7ED05000000060000000200000006000000010F87510300000001028000FA0000000A13D7B105000000020000000A00000004000000001386ACF6000000000CFD9C030F34D0F80CFD9BFF0000000800000006000000010F350CF8000000010CFD9BFF0F350CFE000000040000000A0F34D0FE0C9A86F80F878D03028000FA0000000600000006000000010F87510300000001028000FA0000000713D7B105000000020780010600000007000000060000000400000003120700FE050000FA135D81050500010600000007135D810704548A01138670F60000000700000000000000070000000300000002135D4505000000020500010600000007135D810704548A01138670F60CFD9C030F34D0F800000006000000010F350CF800000001045489FF1386ACFE000000040C9A86F80F878D03028000FA0000000600000006000000010F87510300000001028000FA0000000713D7B1050000000207800106000000070000000600000007000000001386ACF6000000000CFD9C03000000070F350CF8000000010000000700000003000000040000000012073CF60000000008A91303120700F808A912FF12073CFE00000004050000FA0000000700000008000000070000000112073CF80000000108A912FF12073CFE00000004050000FA135D81050500010600000007135D81070CFD9C010F34D0F60CFD9C03000000070F350CF8000000010000000700000000000000070000000300000002135D45050000000205000106135D4507000000030CFD9C010F34D0F6000000070000000000000007135D81070CFD9C010F34D0F60CFD9C030F34D0F80CFD9BFF0000000800000007000000010F350CF8000000010CFD9BFF0F350CFE000000040C9A86F80F878D0300000007000000010000000700000007000000000F350CF6000000000CFD9C03000000070F350CF8000000010000000700000003120700FE00000007000000041151E8FF08A91301120700F608A91303120700F8050000FA135D810505000106135D45070000000300000008135D8107050000FE135D80FF0000000404548A01138670F604548A03000000050000000A0000000000000007135D44FF00000005000000040000000300000002000000080000000112073CF800000001050000FA135D810505000106135D4507000000030000000A0000000A00000002135D45050000000205000106135D450700000003050000FE135D80FF0000000404548A01138670F60000000A0000000000000008135D44FF0000000A00000004135D8107050000FE135D80FF0000000404548A01138670F60000000A000000000000000A0000000A000000030000000012073CF60000000008A91303120700F8000000080000000112073CF800000001050000FA135D81050500010600000007135D8107050000FE135D80FF000000040CFD9C010F34D0F6000000070000000000000007135D44FF00000009000000040000000300000002135D45050000000205000106135D45070000000300000009135D8107050000FE135D80FF000000040CFD9C010F34D0F60CFD9C0300000008000000090000000000000009135D44FF0CFD9C010000000900000009000000040000000300000004"
theorem small_3278161_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3278161_left_root small_3278161_left_fuel small_3278161_left_count small_3278161_left_encoded = true := by
  decide +kernel
theorem small_3278161_left_covered : CoveredBy scale carrier boxes small_3278161_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3278161_left_root small_3278161_left_fuel small_3278161_left_count small_3278161_left_encoded small_3278161_left_checked

theorem cover_3278161 : CoveredBy scale carrier boxes root_3278161 := by
  apply coveredBy_split_literal root_3278161 small_3278161_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.root_3279127 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_3278161_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.cover_3279127
#print axioms cover_3278161

def root_3278155 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3278155_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3278155_left_fuel : Nat := 1
def small_3278155_left_count : Nat := 1
def small_3278155_left_encoded : String := "00000002"
theorem small_3278155_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3278155_left_root small_3278155_left_fuel small_3278155_left_count small_3278155_left_encoded = true := by
  decide +kernel
theorem small_3278155_left_covered : CoveredBy scale carrier boxes small_3278155_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3278155_left_root small_3278155_left_fuel small_3278155_left_count small_3278155_left_encoded small_3278155_left_checked

theorem cover_3278155 : CoveredBy scale carrier boxes root_3278155 := by
  apply coveredBy_split_literal root_3278155 small_3278155_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.root_3278161 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_3278155_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.cover_3278161
#print axioms cover_3278155

def root_3272701 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3272701 : CoveredBy scale carrier boxes root_3272701 := by
  apply coveredBy_split_literal root_3272701 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.root_3272702 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.root_3278155 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.cover_3272702
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.cover_3278155
#print axioms cover_3272701

def root_3272696 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3272696_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3272696_right_fuel : Nat := 1
def small_3272696_right_count : Nat := 1
def small_3272696_right_encoded : String := "00000001"
theorem small_3272696_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3272696_right_root small_3272696_right_fuel small_3272696_right_count small_3272696_right_encoded = true := by
  decide +kernel
theorem small_3272696_right_covered : CoveredBy scale carrier boxes small_3272696_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3272696_right_root small_3272696_right_fuel small_3272696_right_count small_3272696_right_encoded small_3272696_right_checked

theorem cover_3272696 : CoveredBy scale carrier boxes root_3272696 := by
  apply coveredBy_split_literal root_3272696 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.root_3272701 small_3272696_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.cover_3272701
  · exact small_3272696_right_covered
#print axioms cover_3272696

def root_3272695 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3272695 : CoveredBy scale carrier boxes root_3272695 := by
  apply coveredBy_split_literal root_3272695 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.root_3272696 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1256.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.cover_3272696
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1256.covered
#print axioms cover_3272695

def root_3272690 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3272690_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3272690_right_fuel : Nat := 1
def small_3272690_right_count : Nat := 1
def small_3272690_right_encoded : String := "00000000"
theorem small_3272690_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3272690_right_root small_3272690_right_fuel small_3272690_right_count small_3272690_right_encoded = true := by
  decide +kernel
theorem small_3272690_right_covered : CoveredBy scale carrier boxes small_3272690_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3272690_right_root small_3272690_right_fuel small_3272690_right_count small_3272690_right_encoded small_3272690_right_checked

theorem cover_3272690 : CoveredBy scale carrier boxes root_3272690 := by
  apply coveredBy_split_literal root_3272690 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.root_3272695 small_3272690_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.cover_3272695
  · exact small_3272690_right_covered
#print axioms cover_3272690

def root_3272689 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3272689 : CoveredBy scale carrier boxes root_3272689 := by
  apply coveredBy_split_literal root_3272689 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.root_3272690 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1257.root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.cover_3272690
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1257.covered
#print axioms cover_3272689

def root_3290829 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3290829 : CoveredBy scale carrier boxes root_3290829 := by
  apply coveredBy_split_literal root_3290829 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1258.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1259.root coord4 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1258.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1259.covered
#print axioms cover_3290829

def root_3290823 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3290823_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3290823_left_fuel : Nat := 1
def small_3290823_left_count : Nat := 1
def small_3290823_left_encoded : String := "00000003"
theorem small_3290823_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3290823_left_root small_3290823_left_fuel small_3290823_left_count small_3290823_left_encoded = true := by
  decide +kernel
theorem small_3290823_left_covered : CoveredBy scale carrier boxes small_3290823_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3290823_left_root small_3290823_left_fuel small_3290823_left_count small_3290823_left_encoded small_3290823_left_checked

theorem cover_3290823 : CoveredBy scale carrier boxes root_3290823 := by
  apply coveredBy_split_literal root_3290823 small_3290823_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.root_3290829 coord3 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_3290823_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.cover_3290829
#print axioms cover_3290823

def root_3290822 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3290822_right_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3290822_right_fuel : Nat := 22
def small_3290822_right_count : Nat := 343
def small_3290822_right_encoded : String := "1386AD0604548A09138670FE0C9A86F60F878D010C9A86F80F878D03022A458513E1C4FA067ECE8712EA590600000003022A458913E1C4FE0DE7C9F60E6015010DE7C9F80E6015030115234513F858FA0569AC4700000005000000060000000200000007000000010E5FD9030000000100000006000000000E5FD901000000000DE7C9F8000000080E5FD9030000000101152345000000080000000A0000000413E200FE000000040DE7C9F60E60150100000006000000000E5FD901000000000DE7C9F8000000080E5FD903000000010000000612EA9506022A458913E1C4FE0DE7C9F60E60150100000006000000000E5FD90100000000000000070000000400000006000000030000000213E200FA00000002067ECE8712EA590600000003022A458913E1C4FE0DE7C9F60E6015010DE7C9F8000000070E5FD903000000010000000A000000000E5FD90100000000000000070000000413E200FE000000040DE7C9F60E60150100000009000000000E5FD901000000000DE7C9F8000000070E5FD90300000001033F67C5000000060000000612EA9506022A4589000000070000000600000003000000010F87510300000001022A458513E1C4FA067ECE8712EA590600000003022A45890000000A00000006000000060000000213E200FA00000002067ECE8712EA590600000003022A45890000000A0000000612EA95060000000600000003000000000F875101000000000C9A86F80F878D03022A458513E1C4FA067ECE8712EA590600000003022A45890000000800000008000000080000000213E200FA00000002067ECE8712EA590600000003022A4589000000070000000700000007000000010F87510300000001022A458513E1C4FA067ECE8712EA590600000003022A458913E1C4FE0B4D43F60000000A000000080000000413E200FE000000040B4D43F610804D010B4D43F80000000800000006000000000000000812EA9506022A458913E1C4FE0B4D43F600000008000000080000000400000008000000030000000213E200FA00000002067ECE8712EA590600000003022A458913E1C4FE0B4D43F60000000A10801101000000000B4D43F8000000070000000A0000000413E200FE000000040B4D43F610804D010B4D43F810804D03033F67C513BBF4FA0569AC471340D5060000000300000008000000060000000200000007000000011080110300000001000000060000000010801101000000000B4D43F8000000081080110300000001033F67C5000000080000000A12EA9506022A45890000000A13E200FE000000040B4D43F6000000060000000700000003000000041386ACFE000000040C9A86F60F878D010C9A86F80F878D03022A458513E1C4FA067ECE8712EA590600000003067ECE8912EA58FE000000060000000400000006000000060000000213E200FA00000002067ECE8712EA5906000000030000000900000006000000010F8751030000000100000006000000000F875101000000000C9A86F80F878D03022A458513E1C4FA067ECE8712EA590600000003067ECE890000000800000008000000080000000213E200FA00000002067ECE8712EA590600000003067ECE8912EA58FE0B4D43F610804D010000000700000000000000070000000412EA94FE000000040B4D43F610804D0100000006000000000000000700000007000000010F87510300000001022A458513E1C4FA067ECE8712EA590600000003067ECE8912EA58FE0B4D43F600000006000000080000000400000006000000060000000213E200FA00000002067ECE8712EA590600000003067ECE8912EA58FE0B4D43F610804D01000000060000000010801101000000000B4D43F8000000080000000600000004000000060000000600000003"
theorem small_3290822_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3290822_right_root small_3290822_right_fuel small_3290822_right_count small_3290822_right_encoded = true := by
  decide +kernel
theorem small_3290822_right_covered : CoveredBy scale carrier boxes small_3290822_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3290822_right_root small_3290822_right_fuel small_3290822_right_count small_3290822_right_encoded small_3290822_right_checked

theorem cover_3290822 : CoveredBy scale carrier boxes root_3290822 := by
  apply coveredBy_split_literal root_3290822 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.root_3290823 small_3290822_right_root coord3 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.cover_3290823
  · exact small_3290822_right_covered
#print axioms cover_3290822

def root_3290817 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3290817_right_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16378880), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3290817_right_fuel : Nat := 1
def small_3290817_right_count : Nat := 1
def small_3290817_right_encoded : String := "00000002"
theorem small_3290817_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3290817_right_root small_3290817_right_fuel small_3290817_right_count small_3290817_right_encoded = true := by
  decide +kernel
theorem small_3290817_right_covered : CoveredBy scale carrier boxes small_3290817_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3290817_right_root small_3290817_right_fuel small_3290817_right_count small_3290817_right_encoded small_3290817_right_checked

theorem cover_3290817 : CoveredBy scale carrier boxes root_3290817 := by
  apply coveredBy_split_literal root_3290817 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.root_3290822 small_3290817_right_root coord2 false (-16378880)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.cover_3290822
  · exact small_3290817_right_covered
#print axioms cover_3290817

def root_3297065 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3297065 : CoveredBy scale carrier boxes root_3297065 := by
  apply coveredBy_split_literal root_3297065 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1260.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1261.root coord4 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1260.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1261.covered
#print axioms cover_3297065

def root_3297059 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3297059_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3297059_left_fuel : Nat := 1
def small_3297059_left_count : Nat := 1
def small_3297059_left_encoded : String := "00000003"
theorem small_3297059_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3297059_left_root small_3297059_left_fuel small_3297059_left_count small_3297059_left_encoded = true := by
  decide +kernel
theorem small_3297059_left_covered : CoveredBy scale carrier boxes small_3297059_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3297059_left_root small_3297059_left_fuel small_3297059_left_count small_3297059_left_encoded small_3297059_left_checked

theorem cover_3297059 : CoveredBy scale carrier boxes root_3297059 := by
  apply coveredBy_split_literal root_3297059 small_3297059_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.root_3297065 coord3 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_3297059_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.cover_3297065
#print axioms cover_3297059

def root_3297058 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3297058_right_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3297058_right_fuel : Nat := 18
def small_3297058_right_count : Nat := 159
def small_3297058_right_encoded : String := "1386AD0604548A09138670FE0C9A86F60F878D010C9A86F80F878D03067ECE8512EA58FA067ECE8712EA590600000003022A45890000000700000009000000070000000200000007000000010F87510300000001067ECE8512EA58FA067ECE8712EA590600000003022A45890000000A13E200FE000000040DE7C9F6000000060E5FD901000000000B4D43F810804D0300000006000000010000000612EA9506022A45890000000A00000006000000030000000212EA94FA00000002067ECE8712EA590600000003022A45890000000A13E200FE000000040DE7C9F6000000060E5FD901000000000000000712EA9506022A4589000000070000000600000003000000000F875101000000000C9A86F80F878D0300000007000000010F87510300000001067ECE8512EA58FA067ECE8712EA590600000003022A458913E1C4FE0B4D43F60000000A000000070000000413E200FE000000040B4D43F610804D010B4D43F80000000710801103000000010000000A000000000000000712EA950600000007000000030000000212EA94FA00000002067ECE8712EA590600000003022A4589000000070000000700000007000000041386ACFE000000040C9A86F60F878D010C9A86F80F878D0300000009000000010F87510300000001067ECE850000000600000006000000000F875101000000000C9A86F80F878D03067ECE8512EA58FA067ECE8712EA59060000000300000007000000070000000200000007000000010F87510300000001067ECE8512EA58FA067ECE8712EA590600000003067ECE8912EA58FE0B4D43F610804D010000000600000000108011010000000000000007000000040000000500000005000000020000000500000003"
theorem small_3297058_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3297058_right_root small_3297058_right_fuel small_3297058_right_count small_3297058_right_encoded = true := by
  decide +kernel
theorem small_3297058_right_covered : CoveredBy scale carrier boxes small_3297058_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3297058_right_root small_3297058_right_fuel small_3297058_right_count small_3297058_right_encoded small_3297058_right_checked

theorem cover_3297058 : CoveredBy scale carrier boxes root_3297058 := by
  apply coveredBy_split_literal root_3297058 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.root_3297059 small_3297058_right_root coord3 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.cover_3297059
  · exact small_3297058_right_covered
#print axioms cover_3297058

def root_3297052 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3297052_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3297052_left_fuel : Nat := 1
def small_3297052_left_count : Nat := 1
def small_3297052_left_encoded : String := "00000002"
theorem small_3297052_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3297052_left_root small_3297052_left_fuel small_3297052_left_count small_3297052_left_encoded = true := by
  decide +kernel
theorem small_3297052_left_covered : CoveredBy scale carrier boxes small_3297052_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3297052_left_root small_3297052_left_fuel small_3297052_left_count small_3297052_left_encoded small_3297052_left_checked

theorem cover_3297052 : CoveredBy scale carrier boxes root_3297052 := by
  apply coveredBy_split_literal root_3297052 small_3297052_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.root_3297058 coord2 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_3297052_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.cover_3297058
#print axioms cover_3297052

def root_3290816 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_3290816 : CoveredBy scale carrier boxes root_3290816 := by
  apply coveredBy_split_literal root_3290816 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.root_3290817 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.root_3297052 coord2 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.cover_3290817
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.cover_3297052
#print axioms cover_3290816

def root_3290810 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3290810_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3290810_left_fuel : Nat := 1
def small_3290810_left_count : Nat := 1
def small_3290810_left_encoded : String := "00000001"
theorem small_3290810_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3290810_left_root small_3290810_left_fuel small_3290810_left_count small_3290810_left_encoded = true := by
  decide +kernel
theorem small_3290810_left_covered : CoveredBy scale carrier boxes small_3290810_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3290810_left_root small_3290810_left_fuel small_3290810_left_count small_3290810_left_encoded small_3290810_left_checked

theorem cover_3290810 : CoveredBy scale carrier boxes root_3290810 := by
  apply coveredBy_split_literal root_3290810 small_3290810_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.root_3290816 coord1 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_3290810_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.cover_3290816
#print axioms cover_3290810

def root_3290514 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3290514_left_root : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3290514_left_fuel : Nat := 19
def small_3290514_left_count : Nat := 143
def small_3290514_left_encoded : String := "0F34D0F804548A05138670FA04548A07138671060000000304548A09138670FE0C9A86F60F878D010AD357830000000910D13CF800000001022A458513E1C4FA022A458713E1C50600000003022A4589000000050000000913E20106022A458913E1C4FE0DE7C9F600000009000000050000000400000009000000030000000200000009000000000F875101000000000AD3578310D100F8022A458500000008000000070000000110D13CF800000001022A458513E1C4FA022A458713E1C5060000000300000005000000080000000213E200FA00000002022A458713E1C50600000003022A4589000000050000000900000007000000041386ACFE000000040C9A86F6000000090F875101000000000AD357830000000910D13CF800000001022A458513E1C4FA022A45870000000A0000000800000002000000091386AD0604548A09138670FE0C9A86F60F878D010AD3578310D100F8000000070000000110D13CF800000001022A458513E1C4FA067ECE8712EA590600000003022A45890000000700000009000000070000000200000007000000000F8751010000000000000007000000041386ACFE000000040C9A86F60F878D0100000009000000000F875101000000000AD357830000000710D13CF800000001022A4585000000080000000700000003000000021386ACFA0000000204548A07138671060000000304548A09138670FE0C9A86F6000000090F875101000000000000000700000004000000091386AD0604548A0900000007000000090000000300000001"
theorem small_3290514_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3290514_left_root small_3290514_left_fuel small_3290514_left_count small_3290514_left_encoded = true := by
  decide +kernel
theorem small_3290514_left_covered : CoveredBy scale carrier boxes small_3290514_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3290514_left_root small_3290514_left_fuel small_3290514_left_count small_3290514_left_encoded small_3290514_left_checked

theorem cover_3290514 : CoveredBy scale carrier boxes root_3290514 := by
  apply coveredBy_split_literal root_3290514 small_3290514_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.root_3290810 coord1 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_3290514_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.cover_3290810
#print axioms cover_3290514

def root_3290508 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3290508_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3290508_left_fuel : Nat := 1
def small_3290508_left_count : Nat := 1
def small_3290508_left_encoded : String := "00000000"
theorem small_3290508_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3290508_left_root small_3290508_left_fuel small_3290508_left_count small_3290508_left_encoded = true := by
  decide +kernel
theorem small_3290508_left_covered : CoveredBy scale carrier boxes small_3290508_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3290508_left_root small_3290508_left_fuel small_3290508_left_count small_3290508_left_encoded small_3290508_left_checked

theorem cover_3290508 : CoveredBy scale carrier boxes root_3290508 := by
  apply coveredBy_split_literal root_3290508 small_3290508_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.root_3290514 coord0 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_3290508_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.cover_3290514
#print axioms cover_3290508

def root_3290142 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3290142_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3290142_left_fuel : Nat := 21
def small_3290142_left_count : Nat := 173
def small_3290142_left_encoded : String := "0F34D0F60CFD9C030F34D0F804548A05138670FA000000090000000200000009000000010F350CF80000000104548A05138670FA04548A07138671060000000304548A09138670FE0C9A86F80F878D030AD357810000000910D13CF600000000022A458513E1C4FA022A458713E1C50600000003022A4589000000050000000913E20106022A458913E1C4FE0DE7C9F800000009000000050000000400000009000000030000000200000009000000010F875103000000010AD3578110D100F6022A458500000006000000090000000010D13CF600000000022A458513E1C4FA022A458713E1C5060000000300000005000000060000000213E200FA00000002022A458713E1C50600000003022A4589000000050000000913E20106022A45890000000A0000000600000003000000041386ACFE000000040C9A86F8000000090F87510300000001000000061386AD0604548A09138670FE0C9A86F80F878D030AD3578110D100F6000000060000000010D13CF600000000022A458513E1C4FA067ECE8712EA590600000003022A458913E1C4FE000000060000000400000006000000060000000213E200FA00000002067ECE8712EA5906000000030000000900000006000000010F8751030000000100000006000000040000000600000003000000021386ACFA0000000204548A07138671060000000304548A09138670FE0C9A86F8000000090F875103000000010AD357810000000910D13CF600000000067ECE8512EA58FA022A458713E1C506000000030000000813E20106022A45890000000A0000000600000003000000020000000900000004000000091386AD0604548A09138670FE0C9A86F80F878D0300000009000000010F875103000000010AD357810000000610D13CF600000000067ECE850000000612EA94FA000000020000000600000004000000090000000300000000"
theorem small_3290142_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3290142_left_root small_3290142_left_fuel small_3290142_left_count small_3290142_left_encoded = true := by
  decide +kernel
theorem small_3290142_left_covered : CoveredBy scale carrier boxes small_3290142_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3290142_left_root small_3290142_left_fuel small_3290142_left_count small_3290142_left_encoded small_3290142_left_checked

theorem cover_3290142 : CoveredBy scale carrier boxes root_3290142 := by
  apply coveredBy_split_literal root_3290142 small_3290142_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.root_3290508 coord0 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_3290142_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.cover_3290508
#print axioms cover_3290142

def root_3290137 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3290137_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3290137_right_fuel : Nat := 1
def small_3290137_right_count : Nat := 1
def small_3290137_right_encoded : String := "00000004"
theorem small_3290137_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3290137_right_root small_3290137_right_fuel small_3290137_right_count small_3290137_right_encoded = true := by
  decide +kernel
theorem small_3290137_right_covered : CoveredBy scale carrier boxes small_3290137_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3290137_right_root small_3290137_right_fuel small_3290137_right_count small_3290137_right_encoded small_3290137_right_checked

theorem cover_3290137 : CoveredBy scale carrier boxes root_3290137 := by
  apply coveredBy_split_literal root_3290137 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.root_3290142 small_3290137_right_root coord4 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.cover_3290142
  · exact small_3290137_right_covered
#print axioms cover_3290137

def root_3290136 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3290136_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3290136_right_fuel : Nat := 27
def small_3290136_right_count : Nat := 333
def small_3290136_right_encoded : String := "12073CFE000000040CFD9C010F34D0F60CFD9C03000000090F350CF80000000104548A05138670FA04548A0713867106000000030CFD9C090F34D0FE0000000900000004000000061386AD0600000006000000030000000200000009000000000F350CF6000000000CFD9C030F34D0F804548A05138670FA04548A0713867106000000030CFD9C090F34D0FE0000000900000004000000091386AD060CFD9C090F34D0FE000000090000000400000009000000030000000200000009000000010F350CF80000000104548A05138670FA04548A0713867106000000030CFD9C090F34D0FE0C9A86F60F878D010C9A86F80F878D0300000009000000010F87510300000001022A45850000000600000006000000000F875101000000000C9A86F80F878D03022A458513E1C4FA022A458713E1C506000000030AD3578910D100FE0000000A000000040000000913E201060AD3578910D100FE000000080000000400000009000000030000000200000009000000010F87510300000001022A458513E1C4FA022A458713E1C506000000030AD3578910D100FE0B4D43F610804D01000000060000000010801101000000000B4D43F800000008000000060000000410D13CFE000000040000000613E201060AD3578910D100FE000000060000000400000006000000030000000213E200FA00000002022A458713E1C506000000030AD3578910D100FE0B4D43F610804D010B4D43F800000009000000060000000010801101000000000B4D43F810804D0300000009000000011080110300000001033F67C500000006000000060000000410D13CFE000000040B4D43F6000000060000000A13E201060AD3578910D100FE00000006000000040000000600000003000000040F350CFE000000040C9A86F60F878D010C9A86F80000000900000006000000000F875101000000000C9A86F80F878D030C9A86FE0000000900000009000000010F875103000000010C9A86FE0F878D09022A45850000000600000006000000040F87510900000004000000061386AD060CFD9C090F34D0FE0C9A86F60F878D010C9A86F80F878D03000000060000000100000006000000000F875101000000000C9A86F80F878D03022A458513E1C4FA067ECE8712EA5906000000030AD3578910D100FE000000060000000400000006000000060000000213E200FA00000002067ECE8712EA5906000000030AD3578910D100FE00000006000000040000000500000005000000010F8751030000000100000006000000040F350CFE000000040C9A86F60F878D0100000006000000000F875101000000000C9A86F80F878D030C9A86FE000000060F8751090000000400000005000000010000000600000003000000021386ACFA0000000204548A0713867106000000030CFD9C090F34D0FE0C9A86F60F878D0100000009000000000F875101000000000C9A86F80F878D0300000009000000010F87510300000001067ECE8512EA58FA022A458713E1C506000000030AD3578910D100FE00000009000000040000000913E201060AD3578910D100FE000000060000000400000005000000030000000200000009000000040F350CFE000000040C9A86F6000000090F875101000000000C9A86F8000000090F87510300000001000000051386AD060CFD9C090F34D0FE0C9A86F60F878D010C9A86F80000000900000006000000000F875101000000000C9A86F80F878D03067ECE8512EA58FA000000090000000200000005000000010F8751030000000100000005000000040F350CFE000000040C9A86F60F878D0100000006000000000F875101000000000000000500000003"
theorem small_3290136_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3290136_right_root small_3290136_right_fuel small_3290136_right_count small_3290136_right_encoded = true := by
  decide +kernel
theorem small_3290136_right_covered : CoveredBy scale carrier boxes small_3290136_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3290136_right_root small_3290136_right_fuel small_3290136_right_count small_3290136_right_encoded small_3290136_right_checked

theorem cover_3290136 : CoveredBy scale carrier boxes root_3290136 := by
  apply coveredBy_split_literal root_3290136 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.root_3290137 small_3290136_right_root coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.cover_3290137
  · exact small_3290136_right_covered
#print axioms cover_3290136

def root_3290130 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3290130_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3290130_left_fuel : Nat := 1
def small_3290130_left_count : Nat := 1
def small_3290130_left_encoded : String := "00000003"
theorem small_3290130_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3290130_left_root small_3290130_left_fuel small_3290130_left_count small_3290130_left_encoded = true := by
  decide +kernel
theorem small_3290130_left_covered : CoveredBy scale carrier boxes small_3290130_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3290130_left_root small_3290130_left_fuel small_3290130_left_count small_3290130_left_encoded small_3290130_left_checked

theorem cover_3290130 : CoveredBy scale carrier boxes root_3290130 := by
  apply coveredBy_split_literal root_3290130 small_3290130_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.root_3290136 coord3 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_3290130_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.cover_3290136
#print axioms cover_3290130

def root_3290129 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3290129_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3290129_right_fuel : Nat := 23
def small_3290129_right_count : Nat := 255
def small_3290129_right_encoded : String := "12073D0608A91309120700FE0CFD9C010F34D0F60CFD9C030F34D0F804548A05138670FA0CFD9C070F34D1060000000304548A09138670FE0AD357810000000600000007000000040000000600000006000000021386ACFA000000020CFD9C070F34D106000000030000000700000006000000010F350CF80000000104548A05138670FA0CFD9C070F34D106000000030000000600000006000000021386ACFA000000020CFD9C070F34D1060000000304548A09138670FE00000006000000040000000600000006000000000F350CF6000000000CFD9C030F34D0F804548A05138670FA0CFD9C070F34D1060000000304548A09000000071386ACFE000000040000000700000007000000021386ACFA000000020CFD9C070F34D106000000030000000700000007000000010F350CF80000000104548A05138670FA0CFD9C070F34D1060000000304548A09138670FE0C9A86F60F878D010C9A86F80F878D03022A458500000006000000070000000100000006000000000F875101000000000C9A86F80F878D0300000007000000010F87510300000001022A458513E1C4FA0AD3578710D1010600000003022A45890000000800000006000000060000000213E200FA000000020AD3578710D10106000000030000000700000006000000041386ACFE000000040C9A86F60F878D0100000006000000000F875101000000000C9A86F80F878D03022A4585000000060000000700000001000000060F350D0604548A09138670FE0C9A86F60000000600000007000000040000000600000003000000021386ACFA000000020CFD9C070F34D1060000000304548A09138670FE0C9A86F60F878D010C9A86F8000000070F87510300000001067ECE8500000006000000060000000000000007000000041386ACFE000000040C9A86F60F878D0100000006000000000F87510100000000000000050F350D0604548A090000000700000005000000030000000412073CFE000000040CFD9C010F34D0F60CFD9C030F34D0F804548A05000000061386ACFA0000000200000006000000010F350CF80000000100000006000000000F350CF6000000000CFD9C030F34D0F804548A05138670FA0CFD9C070F34D106000000030CFD9C090F34D0FE0C9A86F60000000600000007000000040F350CFE000000040C9A86F600000006000000070F350D060CFD9C09000000070000000500000003000000021386ACFA000000020CFD9C070F34D106000000030000000700000005000000010F350CF80000000104548A05138670FA0CFD9C070F34D106000000030CFD9C090F34D0FE00000006000000040000000500000005000000021386ACFA000000020CFD9C070F34D106000000030CFD9C090F34D0FE0000000500000004000000050000000500000003"
theorem small_3290129_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3290129_right_root small_3290129_right_fuel small_3290129_right_count small_3290129_right_encoded = true := by
  decide +kernel
theorem small_3290129_right_covered : CoveredBy scale carrier boxes small_3290129_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3290129_right_root small_3290129_right_fuel small_3290129_right_count small_3290129_right_encoded small_3290129_right_checked

theorem cover_3290129 : CoveredBy scale carrier boxes root_3290129 := by
  apply coveredBy_split_literal root_3290129 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.root_3290130 small_3290129_right_root coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.cover_3290130
  · exact small_3290129_right_covered
#print axioms cover_3290129

def root_3290124 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3290124_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_3290124_right_fuel : Nat := 1
def small_3290124_right_count : Nat := 1
def small_3290124_right_encoded : String := "00000002"
theorem small_3290124_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_3290124_right_root small_3290124_right_fuel small_3290124_right_count small_3290124_right_encoded = true := by
  decide +kernel
theorem small_3290124_right_covered : CoveredBy scale carrier boxes small_3290124_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_3290124_right_root small_3290124_right_fuel small_3290124_right_count small_3290124_right_encoded small_3290124_right_checked

theorem cover_3290124 : CoveredBy scale carrier boxes root_3290124 := by
  apply coveredBy_split_literal root_3290124 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.root_3290129 small_3290124_right_root coord2 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078.cover_3290129
  · exact small_3290124_right_covered
#print axioms cover_3290124

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0078
