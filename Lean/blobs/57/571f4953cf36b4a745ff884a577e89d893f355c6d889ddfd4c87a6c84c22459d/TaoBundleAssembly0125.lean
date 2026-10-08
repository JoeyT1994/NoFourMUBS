import TaoBundleAssembly0122
import TaoBundleAssembly0124
import TaoBundleChunkBatch0467
import TaoBundleChunkBatch0470
import TaoBundleChunkBatch0471
import TaoBundleChunkBatch0472
import TaoBundleChunkBatch0473
import TaoBundleChunkBatch0474
import TaoBundleChunkBatch0475
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125
def root_4991471 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4991471_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4991471_right_fuel : Nat := 33
def small_4991471_right_count : Nat := 371
def small_4991471_right_encoded : String := "115224FD000000030A0001081151E8FF08A91303120701020000000108A9130512070104000000020000000512073D0408A912FD12073D06050000F6135D810105000108135D44FF04548A03000000091386AD02000000090000000100000004000000050000000000000005000000031207010600000003000000050000000212073D0208A91305120701040000000208A912FD12073D06050000F6135D810105000108135D44FF0CFD9C030F34D10200000001000000050F350D0204548A051386710400000002000000051386AD040CFD9BFD0F350D060C9A87020F875103000000010C9A87060F8750FD078000F60000000700000005000000030000000500000005000000030F34D10600000003000000050000000200000001000000040000000500000000000000050000000312070106000000030000000512073D0408A912FD12073D06050000F6135D810105000108135D44FF0CFD9C030F34D102000000010CFD9C050F34D10400000002000000050F350D040CFD9BFD0F350D060C9A8704000000090F878D050C9A87060F8750FD078000F600000009000000050000000300000005000000020000000300000009000000020F350D020CFD9C050F34D104000000020CFD9BFD0F350D060C9A87020F875103000000010C9A87060F8750FD078000F6128A7D010280010800000008000000080000000000000008000000030F878CFD00000003078000F6128A7D010000000800000000000000050F878D030C9A87060F8750FD078000F6128A7D010280010813D7B0FF0AD3578510D10104000000020000000510D13D040DE7CA020E5FD9030000000100000008000000050000000200000004000000050000000000000005000000030000000500000001000000030F34D10600000003000000050F350D040CFD9BFD0F350D060C9A87020F875103000000010C9A87040F875105000000020C9A87060F8750FD078000F60000000A0000000800000003000000080F878D050C9A87060F8750FD078000F6128A7D010280010800000008000000080000000000000008000000030F878CFD0000000300000008000000020F878D030C9A87040F875105000000020C9A87060F8750FD078000F60000000A00000009000000030000000A0F878D050C9A87060F8750FD078000F6128A7D010280010813D7B0FF000000090000000413D7ECFF000000040DE7CA020E5FD903000000010DE7CA0400000008000000050000000500000000128A410100000000028001080000000800000005000000030F878CFD00000003078000F60000000A000000050000000200000001000000030F34D106000000030C9A87020F875103000000010000000A00000009000000020000000100000004135D80FF000000040CFD9C030F34D10200000001000000050F350D020CFD9C050F34D10400000002000000050F350D040CFD9BFD0F350D060C9A87020F875103000000010C9A87040F875105000000020C9A87060F8750FD078000F6128A7D01078001080000000800000008000000000000000800000003000000050F878D050C9A87060F8750FD078000F6128A7D0107800108000000080000000500000000000000050000000300000005000000020F878D030C9A87040F875105000000020C9A87060F8750FD078000F6128A7D0107800108128A40FF0000000A0000000400000005000000000000000500000003000000050000000500000001000000030F34D1060000000300000005000000020000000100000000135D45010000000005000108135D44FF0CFD9C030F34D10200000001000000050F350D020CFD9C050F34D10400000002000000050F350D040CFD9BFD0F350D060C9A87020F87510300000001000000080F878D030C9A8704000000080000000500000001000000030F34D106000000030000000500000002000000010000000400000005000000031207010600000003050000F6135D810105000108135D44FF0CFD9C0300000009000000050000000400000005000000000000000500000002000000010000000400000005"
theorem small_4991471_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4991471_right_root small_4991471_right_fuel small_4991471_right_count small_4991471_right_encoded = true := by
  decide +kernel
theorem small_4991471_right_covered : CoveredBy scale carrier boxes small_4991471_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4991471_right_root small_4991471_right_fuel small_4991471_right_count small_4991471_right_encoded small_4991471_right_checked

theorem cover_4991471 : CoveredBy scale carrier boxes root_4991471 := by
  apply coveredBy_split_literal root_4991471 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0124.root_4991472 small_4991471_right_root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0124.cover_4991472
  · exact small_4991471_right_covered
#print axioms cover_4991471

def root_4991466 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4991466_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4991466_right_fuel : Nat := 1
def small_4991466_right_count : Nat := 1
def small_4991466_right_encoded : String := "00000002"
theorem small_4991466_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4991466_right_root small_4991466_right_fuel small_4991466_right_count small_4991466_right_encoded = true := by
  decide +kernel
theorem small_4991466_right_covered : CoveredBy scale carrier boxes small_4991466_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4991466_right_root small_4991466_right_fuel small_4991466_right_count small_4991466_right_encoded small_4991466_right_checked

theorem cover_4991466 : CoveredBy scale carrier boxes root_4991466 := by
  apply coveredBy_split_literal root_4991466 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.root_4991471 small_4991466_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.cover_4991471
  · exact small_4991466_right_covered
#print axioms cover_4991466

def root_4989156 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4989156 : CoveredBy scale carrier boxes root_4989156 := by
  apply coveredBy_split_literal root_4989156 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1866.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.root_4991466 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1866.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.cover_4991466
#print axioms cover_4989156

def root_4989151 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4989151_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4989151_right_fuel : Nat := 1
def small_4989151_right_count : Nat := 1
def small_4989151_right_encoded : String := "00000001"
theorem small_4989151_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4989151_right_root small_4989151_right_fuel small_4989151_right_count small_4989151_right_encoded = true := by
  decide +kernel
theorem small_4989151_right_covered : CoveredBy scale carrier boxes small_4989151_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4989151_right_root small_4989151_right_fuel small_4989151_right_count small_4989151_right_encoded small_4989151_right_checked

theorem cover_4989151 : CoveredBy scale carrier boxes root_4989151 := by
  apply coveredBy_split_literal root_4989151 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.root_4989156 small_4989151_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.cover_4989156
  · exact small_4989151_right_covered
#print axioms cover_4989151

def root_4986339 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4986339 : CoveredBy scale carrier boxes root_4986339 := by
  apply coveredBy_split_literal root_4986339 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1865.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.root_4989151 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1865.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.cover_4989151
#print axioms cover_4986339

def root_4986333 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4986333_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_4986333_left_fuel : Nat := 1
def small_4986333_left_count : Nat := 1
def small_4986333_left_encoded : String := "00000000"
theorem small_4986333_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_4986333_left_root small_4986333_left_fuel small_4986333_left_count small_4986333_left_encoded = true := by
  decide +kernel
theorem small_4986333_left_covered : CoveredBy scale carrier boxes small_4986333_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_4986333_left_root small_4986333_left_fuel small_4986333_left_count small_4986333_left_encoded small_4986333_left_checked

theorem cover_4986333 : CoveredBy scale carrier boxes root_4986333 := by
  apply coveredBy_split_literal root_4986333 small_4986333_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.root_4986339 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_4986333_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.cover_4986339
#print axioms cover_4986333

def root_4931761 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4931761 : CoveredBy scale carrier boxes root_4931761 := by
  apply coveredBy_split_literal root_4931761 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0124.root_4931762 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.root_4986333 coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0124.cover_4931762
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.cover_4986333
#print axioms cover_4931761

def root_4931760 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4931760 : CoveredBy scale carrier boxes root_4931760 := by
  apply coveredBy_split_literal root_4931760 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.root_4931761 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1878.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.cover_4931761
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1878.covered
#print axioms cover_4931760

def root_4913430 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_4913430 : CoveredBy scale carrier boxes root_4913430 := by
  apply coveredBy_split_literal root_4913430 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0122.root_4913431 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.root_4931760 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0122.cover_4913431
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.cover_4931760
#print axioms cover_4913430

def root_5026970 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5026970 : CoveredBy scale carrier boxes root_5026970 := by
  apply coveredBy_split_literal root_5026970 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1880.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1881.root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1880.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1881.covered
#print axioms cover_5026970

def root_5026965 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5026965_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5026965_right_fuel : Nat := 1
def small_5026965_right_count : Nat := 1
def small_5026965_right_encoded : String := "00000001"
theorem small_5026965_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5026965_right_root small_5026965_right_fuel small_5026965_right_count small_5026965_right_encoded = true := by
  decide +kernel
theorem small_5026965_right_covered : CoveredBy scale carrier boxes small_5026965_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5026965_right_root small_5026965_right_fuel small_5026965_right_count small_5026965_right_encoded small_5026965_right_checked

theorem cover_5026965 : CoveredBy scale carrier boxes root_5026965 := by
  apply coveredBy_split_literal root_5026965 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.root_5026970 small_5026965_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.cover_5026970
  · exact small_5026965_right_covered
#print axioms cover_5026965

def root_5024941 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5024941 : CoveredBy scale carrier boxes root_5024941 := by
  apply coveredBy_split_literal root_5024941 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1879.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.root_5026965 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1879.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.cover_5026965
#print axioms cover_5024941

def root_5024936 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5024936_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5024936_right_fuel : Nat := 1
def small_5024936_right_count : Nat := 1
def small_5024936_right_encoded : String := "00000000"
theorem small_5024936_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5024936_right_root small_5024936_right_fuel small_5024936_right_count small_5024936_right_encoded = true := by
  decide +kernel
theorem small_5024936_right_covered : CoveredBy scale carrier boxes small_5024936_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5024936_right_root small_5024936_right_fuel small_5024936_right_count small_5024936_right_encoded small_5024936_right_checked

theorem cover_5024936 : CoveredBy scale carrier boxes root_5024936 := by
  apply coveredBy_split_literal root_5024936 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.root_5024941 small_5024936_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.cover_5024941
  · exact small_5024936_right_covered
#print axioms cover_5024936

def root_5024935 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5024935_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5024935_right_fuel : Nat := 22
def small_5024935_right_count : Nat := 387
def small_5024935_right_encoded : String := "1151E901000000000A0001021151E903000000010A0001041151E905000000020A0001061151E9070000000300000005115225070A0000FE115224FF0000000408A91307120701060000000308A912FF00000009120700FE050000F6135D810105000102135D4503000000010500010400000009135D810500000009000000020000000900000000000000090000000412073D0608A912FF0000000900000005000000031151E8FF000000090000000400000003115225050A0001061151E907000000030A0000FE115224FF00000004000000091151E8FF08A913051207010400000002000000080000000900000004115225070A0000FE115224FF0000000408A91305120701040000000208A913071207010600000003000000090000000912073D0408A91307120701060000000308A912FF00000009120700FE050000F6135D810105000102135D4503000000010CFD9C05000000090F350D0400000009000000020000000900000000000000090000000412073D060000000900000003000000021151E8FF08A91305120701040000000208A913071207010600000003050000F6135D810100000009000000000000000912073D06050000F600000006000000090000000312073D0408A913071207010600000003000000090000000900000002000000040000000300000002115225030A0001041151E905000000020A0001061151E907000000030A0000FE115224FF0000000408A91303120701020000000108A912FF12073CFE0000000400000007120700FE050000F6135D810105000104135D450500000002000000070000000900000000000000070000000412073D0208A912FF0000000900000005000000011151E8FF0000000700000004115225070A0000FE115224FF0000000408A91303120701020000000108A91307120701060000000308A912FF0000000A120700FE050000F6000000060000000A0000000412073D0608A912FF12073CFE00000004050000F60000000A135D450100000000050001040000000700000009120700FE050000F6135D810105000104135D4505000000020000000A135D810504548A0300000006000000090000000200000000135D45010000000005000104135D45050000000204548A03000000060000000A135D810504548A031386710200000001000000060000000500000002000000040000000312073D0208A91307120701060000000308A912FF00000009120700FE050000F6135D810105000104135D450500000002000000090000000900000000000000090000000412073D0608A912FF12073CFE00000004050000F60000000900000009120700FE050000F6135D810105000104135D4505000000020CFD9C030F34D1020000000100000009000000050000000900000000135D45010000000005000104135D45050000000200000005000000050000000400000003000000011151E8FF000000090000000400000003115225050A0001061151E907000000030A0000FE115224FF0000000408A91303120701020000000108A9130512070104000000020000000812073D0408A912FF00000008000000090000000212073D0208A91305120701040000000208A912FF000000080000000912073D040000000900000002000000011151E8FF08A913030000000812073D0208A9130512070104000000020000000812073D04050000F60000000900000007000000020000000100000004115225070A0000FE115224FF0000000408A91303120701020000000108A9130512070104000000020000000912073D0408A91307120701060000000308A912FF000000090000000912073D0608A912FF12073CFE0000000400000009120700FE050000F6135D810104548A031386710200000001000000090000000900000000135D4501000000000000000900000004000000030000000212073D0208A913050000000912073D0408A91307120701060000000308A912FF00000009120700FE000000090000000412073D06000000090000000300000002000000011151E8FF08A913030000000912073D0208A91305120701040000000208A9130712070106000000030000000600000006000000090000000100000004000000030000000200000001"
theorem small_5024935_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5024935_right_root small_5024935_right_fuel small_5024935_right_count small_5024935_right_encoded = true := by
  decide +kernel
theorem small_5024935_right_covered : CoveredBy scale carrier boxes small_5024935_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5024935_right_root small_5024935_right_fuel small_5024935_right_count small_5024935_right_encoded small_5024935_right_checked

theorem cover_5024935 : CoveredBy scale carrier boxes root_5024935 := by
  apply coveredBy_split_literal root_5024935 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.root_5024936 small_5024935_right_root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.cover_5024936
  · exact small_5024935_right_covered
#print axioms cover_5024935

def root_5034364 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5034364 : CoveredBy scale carrier boxes root_5034364 := by
  apply coveredBy_split_literal root_5034364 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1883.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1884.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1883.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1884.covered
#print axioms cover_5034364

def root_5034358 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5034358_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5034358_left_fuel : Nat := 1
def small_5034358_left_count : Nat := 1
def small_5034358_left_encoded : String := "00000002"
theorem small_5034358_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5034358_left_root small_5034358_left_fuel small_5034358_left_count small_5034358_left_encoded = true := by
  decide +kernel
theorem small_5034358_left_covered : CoveredBy scale carrier boxes small_5034358_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5034358_left_root small_5034358_left_fuel small_5034358_left_count small_5034358_left_encoded small_5034358_left_checked

theorem cover_5034358 : CoveredBy scale carrier boxes root_5034358 := by
  apply coveredBy_split_literal root_5034358 small_5034358_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.root_5034364 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_5034358_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.cover_5034364
#print axioms cover_5034358

def root_5044718 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5044718_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5044718_left_fuel : Nat := 25
def small_5044718_left_count : Nat := 249
def small_5044718_left_encoded : String := "0F87510700000003022A458113E1C4F6022A458313E1C50200000001022A45890000000513E200FE000000040DE7CA040E5FD90500000002000000060000000613E20102022A458913E1C4FE0DE7CA040E5FD905000000020B4D44060000000510804D070000000500000003000000060000000413E200FE000000040DE7CA040E5FD905000000020000000600000006000000010000000013E200F600000000022A458313E1C50200000001022A458913E1C4FE0DE7CA040E5FD905000000020B4D44060000000510804D070000000500000003000000080000000413E200FE000000040DE7CA040E5FD905000000020B4D44061080110700000003033F67C10000000613BC30F60000000001152343000000060000000610804D07033F67C113BBF4F6011523430000000513F89502033F67C90000000500000006000000010000000013BC30F6000000000115234313F8590200000001033F67C913BBF4FE000000050000000413BC30FE000000040D4128840EFA110500000002000000070000000613F89502033F67C913BBF4FE0D4128840EFA1105000000020BF3E5861008ED0700000003000000061009290703C9F8E1000000050000000A000000030EFA4D050BF3E586000000061009290703C9F8E1000000050000000800000003000000020000000413BC30FE000000040D4128840EFA1105000000020BF3E586000000061009290703C9F8E10000000613A36CF600000000019FB4630000000600000006000000030000000600000001000000030E6015050B4D44060000000610804D07033F67C10000000613BC30F600000000011523430000000813F89502033F67C9000000080000000600000001000000030000000213E20102022A458913E1C4FE0DE7CA040E5FD905000000020B4D44061080110700000003033F67C1000000060000000910804D07033F67C113BBF4F6033F67C300000005000000090000000000000009000000030E60150500000009000000020000000413E200FE000000040DE7CA040E5FD905000000020B4D440610801107000000030000000610804D07033F67C113BBF4F6033F67C313BBF5020000000100000006000000060000000013BC30F600000000033F67C313BBF50200000001033F67C913BBF4FE0D4128840EFA1105000000020BF3E586000000091009290703C9F8E1000000060000000900000003000000090000000413BC30FE000000040D4128840EFA110500000002000000060000000613BC3102033F67C90000000913BC30FE000000040D4128840EFA110500000002000000060000000600000001000000030E6015050B4D44060000000610804D07033F67C10000000600000009000000030000000200000001"
theorem small_5044718_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5044718_left_root small_5044718_left_fuel small_5044718_left_count small_5044718_left_encoded = true := by
  decide +kernel
theorem small_5044718_left_covered : CoveredBy scale carrier boxes small_5044718_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5044718_left_root small_5044718_left_fuel small_5044718_left_count small_5044718_left_encoded small_5044718_left_checked

theorem cover_5044718 : CoveredBy scale carrier boxes root_5044718 := by
  apply coveredBy_split_literal root_5044718 small_5044718_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1888.root coord3 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_5044718_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1888.covered
#print axioms cover_5044718

def root_5044713 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5044713_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(13027072), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5044713_right_fuel : Nat := 1
def small_5044713_right_count : Nat := 1
def small_5044713_right_encoded : String := "00000002"
theorem small_5044713_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5044713_right_root small_5044713_right_fuel small_5044713_right_count small_5044713_right_encoded = true := by
  decide +kernel
theorem small_5044713_right_covered : CoveredBy scale carrier boxes small_5044713_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5044713_right_root small_5044713_right_fuel small_5044713_right_count small_5044713_right_encoded small_5044713_right_checked

theorem cover_5044713 : CoveredBy scale carrier boxes root_5044713 := by
  apply coveredBy_split_literal root_5044713 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.root_5044718 small_5044713_right_root coord2 true (13027072)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.cover_5044718
  · exact small_5044713_right_covered
#print axioms cover_5044713

def root_5043479 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5043479 : CoveredBy scale carrier boxes root_5043479 := by
  apply coveredBy_split_literal root_5043479 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1887.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.root_5044713 coord2 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1887.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.cover_5044713
#print axioms cover_5043479

def root_5043474 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5043474_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16378880), (-15122432)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5043474_right_fuel : Nat := 1
def small_5043474_right_count : Nat := 1
def small_5043474_right_encoded : String := "00000004"
theorem small_5043474_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5043474_right_root small_5043474_right_fuel small_5043474_right_count small_5043474_right_encoded = true := by
  decide +kernel
theorem small_5043474_right_covered : CoveredBy scale carrier boxes small_5043474_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5043474_right_root small_5043474_right_fuel small_5043474_right_count small_5043474_right_encoded small_5043474_right_checked

theorem cover_5043474 : CoveredBy scale carrier boxes root_5043474 := by
  apply coveredBy_split_literal root_5043474 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.root_5043479 small_5043474_right_root coord4 false (-16378880)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.cover_5043479
  · exact small_5043474_right_covered
#print axioms cover_5043474

def root_5043473 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5043473 : CoveredBy scale carrier boxes root_5043473 := by
  apply coveredBy_split_literal root_5043473 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.root_5043474 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1889.root coord4 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.cover_5043474
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1889.covered
#print axioms cover_5043473

def root_5043468 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5043468_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5043468_right_fuel : Nat := 1
def small_5043468_right_count : Nat := 1
def small_5043468_right_encoded : String := "00000003"
theorem small_5043468_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5043468_right_root small_5043468_right_fuel small_5043468_right_count small_5043468_right_encoded = true := by
  decide +kernel
theorem small_5043468_right_covered : CoveredBy scale carrier boxes small_5043468_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5043468_right_root small_5043468_right_fuel small_5043468_right_count small_5043468_right_encoded small_5043468_right_checked

theorem cover_5043468 : CoveredBy scale carrier boxes root_5043468 := by
  apply coveredBy_split_literal root_5043468 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.root_5043473 small_5043468_right_root coord3 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.cover_5043473
  · exact small_5043468_right_covered
#print axioms cover_5043468

def root_5042872 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5042872_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5042872_left_fuel : Nat := 26
def small_5042872_left_count : Nat := 287
def small_5042872_left_encoded : String := "0F34D1060000000304548A09138670FE0C9A87040F87510500000002022A458113E1C4F6022A458313E1C502000000010AD357870000000510D13D06022A458900000005000000080000000313E201020AD357870000000800000008000000010000000013E200F600000000022A458313E1C502000000010AD3578710D10106000000030000000610D13D06022A45890000000A13E200FE000000040B4D44040000000810804D05033F67C1000000090000000A000000020000000313E201020AD357870000000810D13D06022A45890000000A0000000800000003000000010F878D05022A458113E1C4F6022A458313E1C502000000010AD357870000000510D13D06022A45890000000513E200FE000000040DE7CA04000000050E60150500000005000000020000000313E201020AD3578710D10106000000030000000710D13D06022A458913E1C4FE0DE7CA040000000500000007000000040000000800000003000000010000000013E200F600000000022A458313E1C502000000010AD3578710D1010600000003022A45890000000513E200FE000000040DE7CA04000000080000000710D13D06022A458913E1C4FE0DE7CA04000000050E60150500000005000000020000000413E200FE000000040DE7CA040E5FD90500000002033F67C113BBF4F60115234300000005000000080000000013BC30F6000000000115234313F85902000000010BE879C7000000051011AD06033F67C90000000513BC30FE000000040D412884000000050EFA4D0500000005000000020000000313F895020BE879C7000000081011AD06033F67C90000000A0000000800000003000000010E601505033F67C113BBF4F6011523430000000513F895020BE879C7000000051011AD060000000700000003000000010000000013BC30F6000000000115234313F85902000000010BE879C7000000051011AD06033F67C90000000513BC30FE000000040DAED885000000050E96610400000005000000020000000313F895020BE879C7000000071011AD06033F67C900000007000000070000000300000001000000020000000313E201020AD3578710D1010600000003022A4589000000070000000710D13D06022A458913E1C4FE0DE7CA040E5FD905000000020000000A0E60150500000007000000020000000413E200FE000000040DE7CA04000000080E601505033F67C1000000070000000700000002000000030000000100000002000000041386ACFE000000040C9A87040F87510500000002022A458100000008000000080F878D05022A458113E1C4F6022A458313E1C502000000010AD357870000000800000008000000080000000013E200F600000000022A458313E1C502000000010AD357870000000810D13D06067ECE8912EA58FE0DE7CA04000000080E601505033F67C10000000813BC30F6000000000115234313F85902000000010BE879C7000000081011AD060569AC491340D4FE0DAED8850E96250400000002000000070E966104000000080000000200000004000000080000000300000008000000020000000400000008000000030000000800000002"
theorem small_5042872_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5042872_left_root small_5042872_left_fuel small_5042872_left_count small_5042872_left_encoded = true := by
  decide +kernel
theorem small_5042872_left_covered : CoveredBy scale carrier boxes small_5042872_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5042872_left_root small_5042872_left_fuel small_5042872_left_count small_5042872_left_encoded small_5042872_left_checked

theorem cover_5042872 : CoveredBy scale carrier boxes root_5042872 := by
  apply coveredBy_split_literal root_5042872 small_5042872_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.root_5043468 coord3 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_5042872_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.cover_5043468
#print axioms cover_5042872

def root_5042867 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5042867_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5042867_right_fuel : Nat := 1
def small_5042867_right_count : Nat := 1
def small_5042867_right_encoded : String := "00000002"
theorem small_5042867_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5042867_right_root small_5042867_right_fuel small_5042867_right_count small_5042867_right_encoded = true := by
  decide +kernel
theorem small_5042867_right_covered : CoveredBy scale carrier boxes small_5042867_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5042867_right_root small_5042867_right_fuel small_5042867_right_count small_5042867_right_encoded small_5042867_right_checked

theorem cover_5042867 : CoveredBy scale carrier boxes root_5042867 := by
  apply coveredBy_split_literal root_5042867 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.root_5042872 small_5042867_right_root coord2 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.cover_5042872
  · exact small_5042867_right_covered
#print axioms cover_5042867

def root_5041639 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5041639 : CoveredBy scale carrier boxes root_5041639 := by
  apply coveredBy_split_literal root_5041639 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1886.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.root_5042867 coord2 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1886.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.cover_5042867
#print axioms cover_5041639

def root_5041633 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5041633_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5041633_left_fuel : Nat := 1
def small_5041633_left_count : Nat := 1
def small_5041633_left_encoded : String := "00000001"
theorem small_5041633_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5041633_left_root small_5041633_left_fuel small_5041633_left_count small_5041633_left_encoded = true := by
  decide +kernel
theorem small_5041633_left_covered : CoveredBy scale carrier boxes small_5041633_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5041633_left_root small_5041633_left_fuel small_5041633_left_count small_5041633_left_encoded small_5041633_left_checked

theorem cover_5041633 : CoveredBy scale carrier boxes root_5041633 := by
  apply coveredBy_split_literal root_5041633 small_5041633_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.root_5041639 coord1 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_5041633_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.cover_5041639
#print axioms cover_5041633

def root_5041632 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5041632 : CoveredBy scale carrier boxes root_5041632 := by
  apply coveredBy_split_literal root_5041632 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.root_5041633 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1890.root coord1 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.cover_5041633
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1890.covered
#print axioms cover_5041632

def root_5041627 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5041627_right_root : ZRayBox := fun j => (#[⟨⟨(-16378880), (-15122432)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5041627_right_fuel : Nat := 1
def small_5041627_right_count : Nat := 1
def small_5041627_right_encoded : String := "00000000"
theorem small_5041627_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5041627_right_root small_5041627_right_fuel small_5041627_right_count small_5041627_right_encoded = true := by
  decide +kernel
theorem small_5041627_right_covered : CoveredBy scale carrier boxes small_5041627_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5041627_right_root small_5041627_right_fuel small_5041627_right_count small_5041627_right_encoded small_5041627_right_checked

theorem cover_5041627 : CoveredBy scale carrier boxes root_5041627 := by
  apply coveredBy_split_literal root_5041627 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.root_5041632 small_5041627_right_root coord0 false (-16378880)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.cover_5041632
  · exact small_5041627_right_covered
#print axioms cover_5041627

def root_5056253 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5056253_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5056253_left_fuel : Nat := 24
def small_5056253_left_count : Nat := 283
def small_5056253_left_encoded : String := "0F875105000000020C9A87060F87510700000003067ECE8112EA58F6022A458313E1C50200000001022A458913E1C4FE0B4D44040000000A10804D050B4D4406000000080000000A000000020000000413E200FE000000040B4D440410801105000000020B4D4406000000070000000710804D050B4D440610801107000000030000000710804D070569AC411340D4F6011523430000000713F89502033F67C90000000713BC30FE00000004000000070000000100000000134110F600000000011523430000000713F89502033F67C9000000070000000700000001000000030000000213E20102022A458913E1C4FE0B4D44040000000A10804D050B4D4406000000090000000A000000020000000413E200FE000000040B4D440410801105000000020B4D44061080110700000003000000070000000A10804D050B4D440610801107000000030569AC411340D4F6033F67C30000000700000009000000000000000910804D070569AC411340D4F6033F67C313BBF50200000001033F67C90000000A13BC30FE000000040BF3E5841008ED050000000200000007100929050BF3E5861008ED0700000003000000070000000A0000000213BC3102033F67C90000000913BC30FE000000040BF3E5840000000A1009290500000009000000020000000100000000134110F600000000033F67C313BBF50200000001033F67C90000000913BC30FE000000040BF3E5840000000A00000009000000090000000300000002000000010000000012EA94F600000000022A458313E1C50200000001022A458913E1C4FE0B4D44040000000A000000080000000413E200FE000000040B4D440410801105000000020000000710804D050B4D440610801107000000030000000710804D070793F0C1128220F601152343000000070000000A000000000000000A000000030000000213E20102022A45890000000A13E200FE000000040B4D440410801105000000020B4D44061080110700000003000000070000000A10804D050000000900000002000000010F878D07067ECE8112EA58F6022A458313E1C50200000001022A45890000000A13E200FE000000040B4D440410801105000000020000000A10804D050DE7CA060E5FD907000000030569AC411340D4F60115234313F8590200000001033F67C90000000A13BC30FE000000040BF3E5840000000A0000000A0000000A000000000000000A0E6015070000000A000000030000000213E20102022A45890000000A13E200FE000000040B4D440410801105000000020000000A10804D050DE7CA060E5FD907000000030569AC411340D4F6033F67C30000000A0000000A000000000000000A0000000A00000002000000010000000012EA94F600000000022A458313E1C50200000001022A45890000000A13E200FE000000040B4D44040000000A10804D050DE7CA060E5FD907000000030000000A0000000A0000000213E20102022A45890000000A13E200FE000000040B4D44040000000A10804D050DE7CA060E5FD907000000030000000A0000000A000000020000000100000003"
theorem small_5056253_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5056253_left_root small_5056253_left_fuel small_5056253_left_count small_5056253_left_encoded = true := by
  decide +kernel
theorem small_5056253_left_covered : CoveredBy scale carrier boxes small_5056253_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5056253_left_root small_5056253_left_fuel small_5056253_left_count small_5056253_left_encoded small_5056253_left_checked

theorem cover_5056253 : CoveredBy scale carrier boxes root_5056253 := by
  apply coveredBy_split_literal root_5056253 small_5056253_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1893.root coord2 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_5056253_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1893.covered
#print axioms cover_5056253

def root_5056248 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5056248_right_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16378880), (-15122432)⟩, ⟨(0), (3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5056248_right_fuel : Nat := 1
def small_5056248_right_count : Nat := 1
def small_5056248_right_encoded : String := "00000004"
theorem small_5056248_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5056248_right_root small_5056248_right_fuel small_5056248_right_count small_5056248_right_encoded = true := by
  decide +kernel
theorem small_5056248_right_covered : CoveredBy scale carrier boxes small_5056248_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5056248_right_root small_5056248_right_fuel small_5056248_right_count small_5056248_right_encoded small_5056248_right_checked

theorem cover_5056248 : CoveredBy scale carrier boxes root_5056248 := by
  apply coveredBy_split_literal root_5056248 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.root_5056253 small_5056248_right_root coord4 false (-16378880)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.cover_5056253
  · exact small_5056248_right_covered
#print axioms cover_5056248

def root_5061697 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15867392)⟩, ⟨(3632448), (5448672)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (5448672)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5061697_right_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15867392)⟩, ⟨(3632448), (5448672)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-15867392), (-15122432)⟩, ⟨(3632448), (5448672)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5061697_right_fuel : Nat := 1
def small_5061697_right_count : Nat := 1
def small_5061697_right_encoded : String := "00000004"
theorem small_5061697_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5061697_right_root small_5061697_right_fuel small_5061697_right_count small_5061697_right_encoded = true := by
  decide +kernel
theorem small_5061697_right_covered : CoveredBy scale carrier boxes small_5061697_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5061697_right_root small_5061697_right_fuel small_5061697_right_count small_5061697_right_encoded small_5061697_right_checked

theorem cover_5061697 : CoveredBy scale carrier boxes root_5061697 := by
  apply coveredBy_split_literal root_5061697 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1895.root small_5061697_right_root coord4 false (-15867392)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1895.covered
  · exact small_5061697_right_covered
#print axioms cover_5061697

def root_5061696 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15867392)⟩, ⟨(3632448), (5448672)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5061696_right_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15867392)⟩, ⟨(3632448), (5448672)⟩⟩, ⟨⟨(16678144), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(5448672), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5061696_right_fuel : Nat := 19
def small_5061696_right_count : Nat := 239
def small_5061696_right_encoded : String := "12EA94FE000000040DE7CA040E5FD905000000020DE7CA060E5FD907000000030569AC411340D4F60115234313F85902000000010793F0C9128220FE0D4128840EFA1105000000020D4128860EFA110700000003000000070EFA4D0700000008000000030EFA4D050D4128860EFA110700000003000000060EFA4D0704DF1B21000000081365F0F6000000000000000500000003000000020000000412825CFE000000040D412884000000080000000513F895020793F0C9128220FE0D412884000000080EFA4D050D4128860EFA11070000000300000005000000050000000200000004000000050000000100000000134110F6000000000115234313F85902000000010793F0C9128220FE0D4128840EFA11050000000200000005000000050000000400000005000000050E6015070569AC4100000008134110F6000000000115234313F85902000000010793F0C9128220FE0DAED887000000080E9661060D412884000000080000000500000003000000040000000500000005000000030E6015050DE7CA060E5FD907000000030569AC411340D4F60115234313F85902000000010793F0C9128220FE0DAED8850E96250400000002000000060E9661040D412886000000060EFA4D0704DF1B21000000061365F0F600000000008A92230000000A000000050000000300000002000000040000000A13F895020793F0C9128220FE0DAED8850E96250400000002000000060E9661040D41288600000006000000050000000200000004000000050000000100000000134110F6000000000115234313F85902000000010793F0C9128220FE0DAED8850E962504000000020D4128860000000A000000050E9661040D4128860EFA1107000000030000000500000005000000020000000400000005000000050E6015070569AC411340D4F60115234313F85902000000010793F0C9128220FE0DAED8850E962504000000020DAED8870E96250600000003000000080E9661060000000A000000030E9661040DAED887000000080E96610604DF1B21000000081365F0F60000000000000008000000030000000200000004000000080000000800000000134110F6000000000115234313F85902000000010793F0C9128220FE0DAED8850E962504000000020DAED8870E9625060000000305F43D610000000800000005000000050E9661040DAED8870E962506000000030000000500000005000000020000000412825CFE000000040000000513F895020793F0C9128220FE0DAED8850E9625040000000200000005000000050000000400000005000000010000000300000002"
theorem small_5061696_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5061696_right_root small_5061696_right_fuel small_5061696_right_count small_5061696_right_encoded = true := by
  decide +kernel
theorem small_5061696_right_covered : CoveredBy scale carrier boxes small_5061696_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5061696_right_root small_5061696_right_fuel small_5061696_right_count small_5061696_right_encoded small_5061696_right_checked

theorem cover_5061696 : CoveredBy scale carrier boxes root_5061696 := by
  apply coveredBy_split_literal root_5061696 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.root_5061697 small_5061696_right_root coord4 true (5448672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.cover_5061697
  · exact small_5061696_right_covered
#print axioms cover_5061696

def root_5061690 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15867392)⟩, ⟨(3632448), (5448672)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5061690_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15867392)⟩, ⟨(3632448), (5448672)⟩⟩, ⟨⟨(16378880), (16678144)⟩, ⟨(0), (1816224)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5061690_left_fuel : Nat := 1
def small_5061690_left_count : Nat := 1
def small_5061690_left_encoded : String := "00000001"
theorem small_5061690_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5061690_left_root small_5061690_left_fuel small_5061690_left_count small_5061690_left_encoded = true := by
  decide +kernel
theorem small_5061690_left_covered : CoveredBy scale carrier boxes small_5061690_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5061690_left_root small_5061690_left_fuel small_5061690_left_count small_5061690_left_encoded small_5061690_left_checked

theorem cover_5061690 : CoveredBy scale carrier boxes root_5061690 := by
  apply coveredBy_split_literal root_5061690 small_5061690_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.root_5061696 coord1 false (16678144)
  · decide +kernel
  · decide +kernel
  · exact small_5061690_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.cover_5061696
#print axioms cover_5061690

def root_5061689 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15867392)⟩, ⟨(3632448), (5448672)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5061689_right_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15867392)⟩, ⟨(3632448), (5448672)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(1816224), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5061689_right_fuel : Nat := 28
def small_5061689_right_count : Nat := 319
def small_5061689_right_encoded : String := "13E20102067ECE8912EA58FE0DE7CA040E5FD905000000020DE7CA060E5FD907000000030569AC411340D4F6033F67C313BBF502000000010569AC491340D4FE0D4128840EFA1105000000020D4128860EFA11070000000304DF1B211365B4F602B4D6A313D0D1020000000104DF1B291365B4FE0CEDD7C40F422D05000000020000000A0F4269050CEDD7C6000000060F426907000000080000000300000002000000040000000813D10D0204DF1B29000000090000000500000001000000001365F0F60000000002B4D6A313D0D1020000000104DF1B290000000900000005000000050EFA4D0704DF1B21000000081365F0F60000000002B4D6A313D0D102000000010000000800000005000000030EFA4D050D4128860EFA11070000000304DF1B211365B4F602B4D6A313D0D1020000000104DF1B2900000009000000060000000900000000000000090EFA4D0704DF1B211365B4F602B4D6A313D0D1020000000104DF1B291365B4FE0D9479440000000800000009000000040000000800000008000000001365F0F60000000002B4D6A313D0D1020000000104DF1B29000000090000000500000009000000030000000200000004134110FE000000040D412884000000080EFA4D050D4128860EFA11070000000300000005000000050000000213BC31020569AC491340D4FE0D4128840EFA1105000000020D4128860EFA11070000000300000005000000080EFA4D05000000090000000200000004000000050000000100000000134110F600000000033F67C313BBF502000000010569AC491340D4FE0D4128840EFA1105000000020D41288600000009000000050EFA4D0500000009000000020000000400000005000000050E6015070569AC411340D4F6033F67C313BBF502000000010569AC491340D4FE0000000800000004000000080000000800000000134110F600000000033F67C313BBF502000000010569AC491340D4FE0DAED8870E96250600000003000000080E9661060D412884000000080EFA4D0505F43D611317BCF602B4D6A313D0D10200000001000000080000000500000000000000050000000200000003000000040000000800000008000000030E6015050DE7CA060E5FD907000000030569AC411340D4F6033F67C313BBF502000000010569AC4900000009134110FE000000040DAED8850E96250400000002000000090E9661040D412886000000090EFA4D0704DF1B21000000080000000500000003000000020000000900000000134110F600000000000000090E6015070569AC411340D4F6033F67C313BBF502000000010569AC491340D4FE0DAED8850E962504000000020DAED887000000070E96610600000007000000030E9661040DAED887000000080E96610604DF1B210000000800000009000000030000000200000004134110FE000000040000000813BC31020569AC491340D4FE0DAED885000000070E966104000000080000000200000004000000080000000100000000134110F600000000033F67C313BBF502000000010569AC4900000009134110FE000000040DAED8850E9625040000000200000005000000050000000900000003000000020000000412EA94FE000000040DE7CA040E5FD905000000020DE7CA060E5FD9070000000300000005000000080E6015050DE7CA060E5FD907000000030569AC411340D4F6033F67C313BBF50200000001000000050000000500000000000000050E60150700000008000000030000000200000001"
theorem small_5061689_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5061689_right_root small_5061689_right_fuel small_5061689_right_count small_5061689_right_encoded = true := by
  decide +kernel
theorem small_5061689_right_covered : CoveredBy scale carrier boxes small_5061689_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5061689_right_root small_5061689_right_fuel small_5061689_right_count small_5061689_right_encoded small_5061689_right_checked

theorem cover_5061689 : CoveredBy scale carrier boxes root_5061689 := by
  apply coveredBy_split_literal root_5061689 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.root_5061690 small_5061689_right_root coord1 true (1816224)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.cover_5061690
  · exact small_5061689_right_covered
#print axioms cover_5061689

def root_5061684 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (5448672)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5061684_right_root : ZRayBox := fun j => (#[⟨⟨(-15867392), (-15122432)⟩, ⟨(3632448), (5448672)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5061684_right_fuel : Nat := 1
def small_5061684_right_count : Nat := 1
def small_5061684_right_encoded : String := "00000000"
theorem small_5061684_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5061684_right_root small_5061684_right_fuel small_5061684_right_count small_5061684_right_encoded = true := by
  decide +kernel
theorem small_5061684_right_covered : CoveredBy scale carrier boxes small_5061684_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5061684_right_root small_5061684_right_fuel small_5061684_right_count small_5061684_right_encoded small_5061684_right_checked

theorem cover_5061684 : CoveredBy scale carrier boxes root_5061684 := by
  apply coveredBy_split_literal root_5061684 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.root_5061689 small_5061684_right_root coord0 false (-15867392)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.cover_5061689
  · exact small_5061684_right_covered
#print axioms cover_5061684

def root_5061683 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5061683_right_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(5448672), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5061683_right_fuel : Nat := 21
def small_5061683_right_count : Nat := 275
def small_5061683_right_encoded : String := "12EA94F600000000022A458313E1C50200000001067ECE8912EA58FE0DE7CA040E5FD905000000020DE7CA060E5FD907000000030793F0C1128220F60115234313F85902000000010569AC491340D4FE0D4128840EFA1105000000020D4128860EFA110700000003000000070EFA4D070000000A000000030EFA4D050D412886000000090EFA4D0707095FA1000000D300000009000000030000000200000004134110FE000000040D4128840EFA110500000002000000050000000513F895020569AC491340D4FE0D4128840EFA11050000000200000005000000090000000400000005000000010000000012825CF6000000000115234313F85902000000010569AC491340D4FE0D4128840EFA11050000000200000005000000050000000400000005000000050E6015070793F0C1128220F60115234313F85902000000010569AC491340D4FE0DAED8870E96250600000003000000060E9661060D412884000000060EFA4D0507095FA1000000D300000006000000020000000300000004134110FE000000040DAED8870E962506000000030D41288400000006000000050E9661060D4128840EFA11050000000200000005000000050000000313F895020569AC491340D4FE0DAED8870E96250600000003000000060E9661060D4128840000000600000005000000030000000400000005000000010000000012825CF6000000000115234313F85902000000010569AC49000000060000000500000005000000030E6015050DE7CA060E5FD907000000030793F0C1128220F60115234313F85902000000010569AC4900000009134110FE000000040DAED885000000090E9661040D4128860000000900000005000000020000000900000000000000090E6015070793F0C1128220F60115234313F85902000000010569AC491340D4FE0DAED8850E96250400000002000000090E9661040DAED8870E96250600000003000000060E96610607095FA1000000D300000009000000030000000200000004134110FE000000040DAED8850E962504000000020DAED8870E9625060000000307095FA1000000D300000005000000050E9661040DAED8870E9625060000000300000005000000050000000213F895020569AC4900000009134110FE000000040DAED8850000000900000005000000010000000012825CF6000000000115234313F85902000000010569AC4900000009000000050000000900000003000000020000000412EA94FE000000040DE7CA040E5FD905000000020DE7CA060E5FD9070000000300000005000000050E6015050DE7CA060E5FD9070000000300000005000000050000000213E20102067ECE8912EA58FE0DE7CA040E5FD905000000020DE7CA060E5FD90700000003000000050E6015070793F0C1128220F6033F67C313BBF5020000000100000005000000050000000000000005000000030E6015050DE7CA06000000090E6015070000000900000003000000020000000412EA94FE000000040000000500000001"
theorem small_5061683_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5061683_right_root small_5061683_right_fuel small_5061683_right_count small_5061683_right_encoded = true := by
  decide +kernel
theorem small_5061683_right_covered : CoveredBy scale carrier boxes small_5061683_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5061683_right_root small_5061683_right_fuel small_5061683_right_count small_5061683_right_encoded small_5061683_right_checked

theorem cover_5061683 : CoveredBy scale carrier boxes root_5061683 := by
  apply coveredBy_split_literal root_5061683 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.root_5061684 small_5061683_right_root coord0 true (5448672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.cover_5061684
  · exact small_5061683_right_covered
#print axioms cover_5061683

def root_5061678 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5061678_right_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(13027072), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5061678_right_fuel : Nat := 1
def small_5061678_right_count : Nat := 1
def small_5061678_right_encoded : String := "00000003"
theorem small_5061678_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5061678_right_root small_5061678_right_fuel small_5061678_right_count small_5061678_right_encoded = true := by
  decide +kernel
theorem small_5061678_right_covered : CoveredBy scale carrier boxes small_5061678_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5061678_right_root small_5061678_right_fuel small_5061678_right_count small_5061678_right_encoded small_5061678_right_checked

theorem cover_5061678 : CoveredBy scale carrier boxes root_5061678 := by
  apply coveredBy_split_literal root_5061678 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.root_5061683 small_5061678_right_root coord3 true (13027072)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.cover_5061683
  · exact small_5061678_right_covered
#print axioms cover_5061678

def root_5060812 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5060812_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (13027072)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5060812_left_fuel : Nat := 24
def small_5060812_left_count : Nat := 413
def small_5060812_left_encoded : String := "0F87510700000003067ECE8112EA58F6022A458313E1C50200000001067ECE8912EA58FE0DE7CA040E5FD905000000020B4D440610801107000000030569AC411340D4F601152343000000060000000600000000134110F600000000011523430000000713F895020569AC4900000007134110FE00000004000000050000000110804D070569AC411340D4F60115234313F85902000000010569AC491340D4FE0D4128840EFA110500000002000000070EFA4D050BF3E586000000061009290704DF1B210000000600000007000000030000000200000004134110FE000000040D4128840EFA110500000002000000070000000613F895020569AC491340D4FE0D4128840EFA1105000000020BF3E586000000071009290704DF1B210000000700000007000000030EFA4D050BF3E586000000061009290704DF1B21000000061365F0F60000000000000009000000030000000200000004134110FE000000040D4128840EFA1105000000020BF3E586000000061009290704DF1B21000000060000000500000003000000060000000100000000134110F6000000000115234313F85902000000010569AC491340D4FE0D4128840EFA110500000002000000070EFA4D050BF3E586000000071009290705F43D610000000700000007000000030000000200000004134110FE000000040D412884000000070EFA4D050BF3E58600000007000000070000000213F895020569AC491340D4FE0D4128840EFA1105000000020BF3E586000000071009290705F43D610000000700000005000000030EFA4D05000000090000000200000004134110FE000000040D4128840EFA110500000002000000050000000500000001000000030E6015050B4D440610801107000000030569AC41000000060000000910804D070569AC411340D4F60115234313F85902000000010569AC491340D4FE0DAED8850E962504000000020000000600000006000000040000000613F895020569AC4900000009000000060000000100000000134110F6000000000115234313F85902000000010569AC4900000008134110FE000000040DAED885000000090E9661040BF3E586000000061009290705F43D61000000060000000900000003000000020000000900000003000000020000000412EA94FE000000040DE7CA040E5FD905000000020B4D440610801107000000030569AC41000000060000000510804D070569AC411340D4F60115234313F85902000000010793F0C9128220FE0D4128840000000700000006000000040000000613F895020793F0C9128220FE0000000600000004000000050000000100000000134110F60000000000000005000000030E6015050B4D44060000000A10804D070569AC4100000006134110F6000000000115234313F85902000000010793F0C9128220FE0DAED8850000000600000005000000040000000500000005000000030000000213E20102067ECE8912EA58FE0DE7CA040E5FD905000000020B4D440610801107000000030569AC411340D4F600000006000000000000000910804D070569AC411340D4F6033F67C313BBF502000000010569AC491340D4FE0D4128840EFA1105000000020BF3E586000000091009290704DF1B210000000600000009000000030EFA4D05000000090000000200000004134110FE000000040D4128840EFA110500000002000000050000000613BC31020569AC4900000009000000050000000100000000134110F600000000033F67C313BBF502000000010569AC49000000090000000500000005000000030E6015050B4D44060000000910804D070000000900000003000000020000000412EA94FE000000040DE7CA040E5FD90500000002000000050E6015050B4D44061080110700000003000000050000000500000002000000010000000012EA94F600000000022A458313E1C50200000001067ECE8912EA58FE0DE7CA040E5FD905000000020B4D440610801107000000030793F0C1128220F6011523430000000700000005000000000000000510804D070793F0C1128220F60115234313F85902000000010569AC491340D4FE0D412884000000070000000800000004134110FE000000040000000513F895020569AC490000000900000005000000010000000012825CF60000000000000005000000030E60150500000009000000020000000412EA94FE000000040DE7CA040E5FD90500000002000000050E6015050B4D440600000009000000050000000213E20102067ECE89000000090000000500000001"
theorem small_5060812_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5060812_left_root small_5060812_left_fuel small_5060812_left_count small_5060812_left_encoded = true := by
  decide +kernel
theorem small_5060812_left_covered : CoveredBy scale carrier boxes small_5060812_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5060812_left_root small_5060812_left_fuel small_5060812_left_count small_5060812_left_encoded small_5060812_left_checked

theorem cover_5060812 : CoveredBy scale carrier boxes root_5060812 := by
  apply coveredBy_split_literal root_5060812 small_5060812_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.root_5061678 coord3 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_5060812_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.cover_5061678
#print axioms cover_5060812

def root_5060807 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5060807_right_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(13027072), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5060807_right_fuel : Nat := 1
def small_5060807_right_count : Nat := 1
def small_5060807_right_encoded : String := "00000002"
theorem small_5060807_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5060807_right_root small_5060807_right_fuel small_5060807_right_count small_5060807_right_encoded = true := by
  decide +kernel
theorem small_5060807_right_covered : CoveredBy scale carrier boxes small_5060807_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5060807_right_root small_5060807_right_fuel small_5060807_right_count small_5060807_right_encoded small_5060807_right_checked

theorem cover_5060807 : CoveredBy scale carrier boxes root_5060807 := by
  apply coveredBy_split_literal root_5060807 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.root_5060812 small_5060807_right_root coord2 true (13027072)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.cover_5060812
  · exact small_5060807_right_covered
#print axioms cover_5060807

def root_5059469 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5059469 : CoveredBy scale carrier boxes root_5059469 := by
  apply coveredBy_split_literal root_5059469 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1894.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.root_5060807 coord2 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1894.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.cover_5060807
#print axioms cover_5059469

def root_5059463 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5059463_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(3632448), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5059463_left_fuel : Nat := 1
def small_5059463_left_count : Nat := 1
def small_5059463_left_encoded : String := "00000004"
theorem small_5059463_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5059463_left_root small_5059463_left_fuel small_5059463_left_count small_5059463_left_encoded = true := by
  decide +kernel
theorem small_5059463_left_covered : CoveredBy scale carrier boxes small_5059463_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5059463_left_root small_5059463_left_fuel small_5059463_left_count small_5059463_left_encoded small_5059463_left_checked

theorem cover_5059463 : CoveredBy scale carrier boxes root_5059463 := by
  apply coveredBy_split_literal root_5059463 small_5059463_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.root_5059469 coord4 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_5059463_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.cover_5059469
#print axioms cover_5059463

def root_5056247 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5056247 : CoveredBy scale carrier boxes root_5056247 := by
  apply coveredBy_split_literal root_5056247 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.root_5056248 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.root_5059463 coord4 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.cover_5056248
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.cover_5059463
#print axioms cover_5056247

def root_5056242 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5056242_right_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5056242_right_fuel : Nat := 1
def small_5056242_right_count : Nat := 1
def small_5056242_right_encoded : String := "00000003"
theorem small_5056242_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5056242_right_root small_5056242_right_fuel small_5056242_right_count small_5056242_right_encoded = true := by
  decide +kernel
theorem small_5056242_right_covered : CoveredBy scale carrier boxes small_5056242_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5056242_right_root small_5056242_right_fuel small_5056242_right_count small_5056242_right_encoded small_5056242_right_checked

theorem cover_5056242 : CoveredBy scale carrier boxes root_5056242 := by
  apply coveredBy_split_literal root_5056242 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.root_5056247 small_5056242_right_root coord3 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.cover_5056247
  · exact small_5056242_right_covered
#print axioms cover_5056242

def root_5054966 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5054966 : CoveredBy scale carrier boxes root_5054966 := by
  apply coveredBy_split_literal root_5054966 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1892.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.root_5056242 coord3 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1892.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.cover_5056242
#print axioms cover_5054966

def root_5054961 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5054961_right_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5054961_right_fuel : Nat := 1
def small_5054961_right_count : Nat := 1
def small_5054961_right_encoded : String := "00000002"
theorem small_5054961_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5054961_right_root small_5054961_right_fuel small_5054961_right_count small_5054961_right_encoded = true := by
  decide +kernel
theorem small_5054961_right_covered : CoveredBy scale carrier boxes small_5054961_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5054961_right_root small_5054961_right_fuel small_5054961_right_count small_5054961_right_encoded small_5054961_right_checked

theorem cover_5054961 : CoveredBy scale carrier boxes root_5054961 := by
  apply coveredBy_split_literal root_5054961 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.root_5054966 small_5054961_right_root coord2 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.cover_5054966
  · exact small_5054961_right_covered
#print axioms cover_5054961

def root_5053345 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5053345 : CoveredBy scale carrier boxes root_5053345 := by
  apply coveredBy_split_literal root_5053345 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1891.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.root_5054961 coord2 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1891.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.cover_5054961
#print axioms cover_5053345

def root_5053339 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5053339_left_root : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5053339_left_fuel : Nat := 1
def small_5053339_left_count : Nat := 1
def small_5053339_left_encoded : String := "00000001"
theorem small_5053339_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5053339_left_root small_5053339_left_fuel small_5053339_left_count small_5053339_left_encoded = true := by
  decide +kernel
theorem small_5053339_left_covered : CoveredBy scale carrier boxes small_5053339_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5053339_left_root small_5053339_left_fuel small_5053339_left_count small_5053339_left_encoded small_5053339_left_checked

theorem cover_5053339 : CoveredBy scale carrier boxes root_5053339 := by
  apply coveredBy_split_literal root_5053339 small_5053339_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.root_5053345 coord1 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_5053339_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.cover_5053345
#print axioms cover_5053339

def root_5053338 : ZRayBox := fun j => (#[⟨⟨(-16379648), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5053338 : CoveredBy scale carrier boxes root_5053338 := by
  apply coveredBy_split_literal root_5053338 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.root_5053339 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1896.root coord1 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.cover_5053339
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1896.covered
#print axioms cover_5053338

def root_5053332 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5053332_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-16379648)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5053332_left_fuel : Nat := 1
def small_5053332_left_count : Nat := 1
def small_5053332_left_encoded : String := "00000000"
theorem small_5053332_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5053332_left_root small_5053332_left_fuel small_5053332_left_count small_5053332_left_encoded = true := by
  decide +kernel
theorem small_5053332_left_covered : CoveredBy scale carrier boxes small_5053332_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5053332_left_root small_5053332_left_fuel small_5053332_left_count small_5053332_left_encoded small_5053332_left_checked

theorem cover_5053332 : CoveredBy scale carrier boxes root_5053332 := by
  apply coveredBy_split_literal root_5053332 small_5053332_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.root_5053338 coord0 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_5053332_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.cover_5053338
#print axioms cover_5053332

def root_5041626 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5041626 : CoveredBy scale carrier boxes root_5041626 := by
  apply coveredBy_split_literal root_5041626 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.root_5041627 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.root_5053332 coord0 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.cover_5041627
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.cover_5053332
#print axioms cover_5041626

def root_5041621 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5041621_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5041621_right_fuel : Nat := 1
def small_5041621_right_count : Nat := 1
def small_5041621_right_encoded : String := "00000004"
theorem small_5041621_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5041621_right_root small_5041621_right_fuel small_5041621_right_count small_5041621_right_encoded = true := by
  decide +kernel
theorem small_5041621_right_covered : CoveredBy scale carrier boxes small_5041621_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5041621_right_root small_5041621_right_fuel small_5041621_right_count small_5041621_right_encoded small_5041621_right_checked

theorem cover_5041621 : CoveredBy scale carrier boxes root_5041621 := by
  apply coveredBy_split_literal root_5041621 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.root_5041626 small_5041621_right_root coord4 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.cover_5041626
  · exact small_5041621_right_covered
#print axioms cover_5041621

def root_5041620 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5041620_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5041620_right_fuel : Nat := 26
def small_5041620_right_count : Nat := 407
def small_5041620_right_encoded : String := "12073CFE0000000404548A01138670F604548A0313867102000000010CFD9C050F34D104000000020CFD9C070F34D106000000030CFD9C090F34D0FE0000000800000004000000080F350D060CFD9C090F34D0FE0C9A87060000000A0F878D070000000A00000003000000040000000A000000030F350D040CFD9C070F34D106000000030CFD9C090F34D0FE0000000800000004000000080F350D060CFD9C090F34D0FE0C9A87040F875105000000020C9A87060F87510700000003022A458113E1C4F6022A458313E1C502000000010AD3578910D100FE000000060000000400000006000000080000000013E200F600000000022A458313E1C502000000010AD3578910D100FE0B4D440410801105000000020000000710804D050B4D44060000000600000006000000020000000400000005000000050F878D0700000008000000030F878D050C9A87060F87510700000003022A45810000000A13E200F600000000022A45830000000A0000000A0F878D07022A45810000000813E200F600000000022A458313E1C502000000010AD3578910D100FE0DE7CA04000000080E6015050000000A000000020000000400000008000000080000000300000002000000040F350CFE000000040C9A8704000000080F878D050000000A0000000200000003000000021386AD020CFD9C050F34D104000000020CFD9C070F34D10600000003000000080F350D060CFD9C090F34D0FE0C9A87060000000A0F878D070000000800000003000000040000000A000000030F350D040CFD9C070F34D10600000003000000080F350D060CFD9C090F34D0FE0C9A8704000000080F878D050C9A87060F87510700000003022A4581000000080000000500000008000000020000000400000008000000030000000200000001000000001386ACF60000000004548A0313867102000000010CFD9C050F34D104000000020CFD9C070F34D106000000030CFD9C090F34D0FE067ECE8112EA58F6022A458313E1C502000000010AD3578510D10104000000020AD35787000000080000000A10D13D040000000800000002000000080000000012EA94F600000000022A458313E1C502000000010AD3578510D10104000000020AD35787000000080000000510D13D040AD3578700000008000000050000000213E201020AD3578510D10104000000020AD357870000000700000005000000050000000100000004000000080F350D060CFD9C090F34D0FE0C9A87060F87510700000003067ECE810000000A12EA94F6000000000000000A0F878D07067ECE8112EA58F6022A45830000000A13E201020000000A000000010000000012EA94F600000000022A458313E1C502000000010AD357850000000A000000050000000500000003000000040000000A000000030F350D040CFD9C070F34D106000000030CFD9C090F34D0FE0C9A8704000000080F878D05067ECE810000000812EA94F600000000000000080000000200000004000000080F350D060CFD9C090F34D0FE0C9A87040F875105000000020C9A87060F87510700000003000000050F878D07067ECE8112EA58F6022A458313E1C5020000000100000008000000050000000000000005000000030F878D050C9A87060F87510700000003067ECE8112EA58F6022A458313E1C502000000010AD3578910D100FE0DE7CA040E5FD90500000002000000050000000500000004000000050000000500000000000000050F878D07067ECE8112EA58F6022A458313E1C502000000010AD3578910D100FE0DE7CA040E5FD905000000020DE7CA060E5FD9070000000300000005000000050E6015050DE7CA060E5FD9070000000300000005000000050000000200000004000000050000000500000000000000050000000300000002000000040F350CFE000000040000000500000003000000021386AD020CFD9C050F34D104000000020CFD9C070F34D106000000030CFD9C090F34D0FE067ECE810000000812EA94F600000000067ECE83000000080000000500000004000000050F350D060CFD9C090F34D0FE0C9A87060F87510700000003067ECE810000000A000000050F878D07067ECE8112EA58F6067ECE830000000A000000050000000000000005000000030000000400000005000000030F350D040CFD9C070F34D10600000003000000080F350D060CFD9C090F34D0FE0C9A87040F8751050000000200000005000000050000000400000005000000030000000200000001"
theorem small_5041620_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5041620_right_root small_5041620_right_fuel small_5041620_right_count small_5041620_right_encoded = true := by
  decide +kernel
theorem small_5041620_right_covered : CoveredBy scale carrier boxes small_5041620_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5041620_right_root small_5041620_right_fuel small_5041620_right_count small_5041620_right_encoded small_5041620_right_checked

theorem cover_5041620 : CoveredBy scale carrier boxes root_5041620 := by
  apply coveredBy_split_literal root_5041620 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.root_5041621 small_5041620_right_root coord4 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.cover_5041621
  · exact small_5041620_right_covered
#print axioms cover_5041620

def root_5041615 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5041615_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5041615_right_fuel : Nat := 1
def small_5041615_right_count : Nat := 1
def small_5041615_right_encoded : String := "00000003"
theorem small_5041615_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5041615_right_root small_5041615_right_fuel small_5041615_right_count small_5041615_right_encoded = true := by
  decide +kernel
theorem small_5041615_right_covered : CoveredBy scale carrier boxes small_5041615_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5041615_right_root small_5041615_right_fuel small_5041615_right_count small_5041615_right_encoded small_5041615_right_checked

theorem cover_5041615 : CoveredBy scale carrier boxes root_5041615 := by
  apply coveredBy_split_literal root_5041615 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.root_5041620 small_5041615_right_root coord3 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.cover_5041620
  · exact small_5041615_right_covered
#print axioms cover_5041615

def root_5041377 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5041377_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5041377_left_fuel : Nat := 17
def small_5041377_left_count : Nat := 113
def small_5041377_left_encoded : String := "120701060000000308A91309120700FE04548A01138670F604548A0313867102000000010CFD9C050F34D1040000000204548A07000000071386AD0604548A090000000700000007000000030F350D0404548A07000000081386AD0604548A09138670FE0C9A8704000000080F878D05022A4581000000070000000700000002000000040000000800000003000000021386AD020CFD9C050F34D10400000002000000070F350D04000000080000000200000001000000001386ACF60000000004548A0313867102000000010CFD9C050F34D1040000000204548A07000000071386AD0604548A09138670FE00000007000000041386ACFE00000004067ECE810000000700000007000000030F350D0404548A07000000061386AD0604548A09000000061386ACFE000000040C9A8704000000080F878D05000000080000000200000003000000021386AD020CFD9C050F34D10400000002000000070F350D0404548A07000000081386AD0604548A0900000006000000080000000300000002000000010000000412073CFE0000000404548A01000000081386ACF60000000004548A0313867102000000010CFD9C05000000080F350D04000000080000000200000008"
theorem small_5041377_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5041377_left_root small_5041377_left_fuel small_5041377_left_count small_5041377_left_encoded = true := by
  decide +kernel
theorem small_5041377_left_covered : CoveredBy scale carrier boxes small_5041377_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5041377_left_root small_5041377_left_fuel small_5041377_left_count small_5041377_left_encoded small_5041377_left_checked

theorem cover_5041377 : CoveredBy scale carrier boxes root_5041377 := by
  apply coveredBy_split_literal root_5041377 small_5041377_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.root_5041615 coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_5041377_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.cover_5041615
#print axioms cover_5041377

def root_5041372 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5041372_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5041372_right_fuel : Nat := 1
def small_5041372_right_count : Nat := 1
def small_5041372_right_encoded : String := "00000002"
theorem small_5041372_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5041372_right_root small_5041372_right_fuel small_5041372_right_count small_5041372_right_encoded = true := by
  decide +kernel
theorem small_5041372_right_covered : CoveredBy scale carrier boxes small_5041372_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5041372_right_root small_5041372_right_fuel small_5041372_right_count small_5041372_right_encoded small_5041372_right_checked

theorem cover_5041372 : CoveredBy scale carrier boxes root_5041372 := by
  apply coveredBy_split_literal root_5041372 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.root_5041377 small_5041372_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.cover_5041377
  · exact small_5041372_right_covered
#print axioms cover_5041372

def root_5040960 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5040960_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5040960_left_fuel : Nat := 19
def small_5040960_left_count : Nat := 195
def small_5040960_left_encoded : String := "120701040000000208A91307120701060000000308A91309120700FE000000070000000412073CFE0000000404548A01138670F600000008000000001386ACF60000000004548A03138671020000000104548A05000000071386AD0404548A07000000071386AD060CFD9C09000000080000000800000003000000021386AD0204548A0500000007000000080000000112073D0608A91309120700FE04548A01138670F604548A03138671020000000104548A0513867104000000020CFD9C07000000070F350D060000000A000000031386AD040CFD9C070F34D1060000000304548A0900000007000000070F350D0604548A09138670FE0C9A8706000000090F878D07022A4581000000070000000700000003000000040000000A00000003000000021386AD0204548A0513867104000000020CFD9C07000000070F350D0600000007000000031386AD040CFD9C070F34D10600000003000000070F350D0604548A09000000090000000A000000030000000200000001000000001386ACF60000000004548A03138671020000000104548A051386710400000002000000091386AD040CFD9C070F34D1060000000304548A09000000091386ACFE00000004067ECE8100000007000000070F350D0604548A09000000091386ACFE000000040C9A8706000000090F878D07000000090000000300000003000000021386AD0204548A05000000091386AD040CFD9C07000000090F350D06000000090000000300000002000000010000000412073CFE0000000404548A01138670F604548A030000000A1386AD0204548A050000000A0000000A00000001000000001386ACF60000000004548A03138671020000000104548A050000000A1386AD040CFD9C070F34D106000000030CFD9C090F34D0FE067ECE810000000A12EA94F600000000022A45830000000A00000007000000040000000A0F350D060000000A00000003000000021386AD0204548A050000000A1386AD040CFD9C070F34D106000000030CFD9C090F34D0FE00000007000000040000000A0F350D060000000A00000003000000020000000100000003"
theorem small_5040960_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5040960_left_root small_5040960_left_fuel small_5040960_left_count small_5040960_left_encoded = true := by
  decide +kernel
theorem small_5040960_left_covered : CoveredBy scale carrier boxes small_5040960_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5040960_left_root small_5040960_left_fuel small_5040960_left_count small_5040960_left_encoded small_5040960_left_checked

theorem cover_5040960 : CoveredBy scale carrier boxes root_5040960 := by
  apply coveredBy_split_literal root_5040960 small_5040960_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.root_5041372 coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_5040960_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.cover_5041372
#print axioms cover_5040960

def root_5040954 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5040954_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5040954_left_fuel : Nat := 1
def small_5040954_left_count : Nat := 1
def small_5040954_left_encoded : String := "00000001"
theorem small_5040954_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5040954_left_root small_5040954_left_fuel small_5040954_left_count small_5040954_left_encoded = true := by
  decide +kernel
theorem small_5040954_left_covered : CoveredBy scale carrier boxes small_5040954_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5040954_left_root small_5040954_left_fuel small_5040954_left_count small_5040954_left_encoded small_5040954_left_checked

theorem cover_5040954 : CoveredBy scale carrier boxes root_5040954 := by
  apply coveredBy_split_literal root_5040954 small_5040954_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.root_5040960 coord1 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_5040954_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.cover_5040960
#print axioms cover_5040954

def root_5040953 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5040953 : CoveredBy scale carrier boxes root_5040953 := by
  apply coveredBy_split_literal root_5040953 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.root_5040954 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1897.root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.cover_5040954
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1897.covered
#print axioms cover_5040953

def root_5040948 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5040948_right_root : ZRayBox := fun j => (#[⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5040948_right_fuel : Nat := 1
def small_5040948_right_count : Nat := 1
def small_5040948_right_encoded : String := "00000000"
theorem small_5040948_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5040948_right_root small_5040948_right_fuel small_5040948_right_count small_5040948_right_encoded = true := by
  decide +kernel
theorem small_5040948_right_covered : CoveredBy scale carrier boxes small_5040948_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5040948_right_root small_5040948_right_fuel small_5040948_right_count small_5040948_right_encoded small_5040948_right_checked

theorem cover_5040948 : CoveredBy scale carrier boxes root_5040948 := by
  apply coveredBy_split_literal root_5040948 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.root_5040953 small_5040948_right_root coord0 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.cover_5040953
  · exact small_5040948_right_covered
#print axioms cover_5040948

def root_5040947 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5040947 : CoveredBy scale carrier boxes root_5040947 := by
  apply coveredBy_split_literal root_5040947 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.root_5040948 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1898.root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.cover_5040948
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1898.covered
#print axioms cover_5040947

def root_5040942 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5040942_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5040942_right_fuel : Nat := 1
def small_5040942_right_count : Nat := 1
def small_5040942_right_encoded : String := "00000004"
theorem small_5040942_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5040942_right_root small_5040942_right_fuel small_5040942_right_count small_5040942_right_encoded = true := by
  decide +kernel
theorem small_5040942_right_covered : CoveredBy scale carrier boxes small_5040942_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5040942_right_root small_5040942_right_fuel small_5040942_right_count small_5040942_right_encoded small_5040942_right_checked

theorem cover_5040942 : CoveredBy scale carrier boxes root_5040942 := by
  apply coveredBy_split_literal root_5040942 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.root_5040947 small_5040942_right_root coord4 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.cover_5040947
  · exact small_5040942_right_covered
#print axioms cover_5040942

def root_5040941 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5040941_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5040941_right_fuel : Nat := 18
def small_5040941_right_count : Nat := 121
def small_5040941_right_encoded : String := "1151E9090000000408A91301120700F608A91303120701020000000108A91305120701040000000208A913070000000812073D060000000A0000000312073D0408A9130712070106000000030000000812073D06050000FE135D810904548A01138670F604548A0313867102000000010CFD9C05000000080F350D04000000080000000200000008000000001386ACF60000000004548A031386710200000001000000050000000500000004135D45090000000400000005000000030000000212073D0208A91305120701040000000208A913070000000812073D06050000FE135D810904548A01138670F60CFD9C030000000800000008000000001386ACF6000000000CFD9C030000000A0000000500000004135D450900000004000000050000000312073D0408A913070000000812073D06050000FE00000008000000050000000300000002000000010000000012073CF60000000008A91303120701020000000108A91305120701040000000208A913071207010600000003000000050000000512073D0408A91307120701060000000300000005000000050000000212073D0208A91305120701040000000208A913071207010600000003000000050000000512073D0408A91307120701060000000300000005000000050000000200000001"
theorem small_5040941_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5040941_right_root small_5040941_right_fuel small_5040941_right_count small_5040941_right_encoded = true := by
  decide +kernel
theorem small_5040941_right_covered : CoveredBy scale carrier boxes small_5040941_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5040941_right_root small_5040941_right_fuel small_5040941_right_count small_5040941_right_encoded small_5040941_right_checked

theorem cover_5040941 : CoveredBy scale carrier boxes root_5040941 := by
  apply coveredBy_split_literal root_5040941 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.root_5040942 small_5040941_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.cover_5040942
  · exact small_5040941_right_covered
#print axioms cover_5040941

def root_5040936 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5040936_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5040936_right_fuel : Nat := 1
def small_5040936_right_count : Nat := 1
def small_5040936_right_encoded : String := "00000003"
theorem small_5040936_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5040936_right_root small_5040936_right_fuel small_5040936_right_count small_5040936_right_encoded = true := by
  decide +kernel
theorem small_5040936_right_covered : CoveredBy scale carrier boxes small_5040936_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5040936_right_root small_5040936_right_fuel small_5040936_right_count small_5040936_right_encoded small_5040936_right_checked

theorem cover_5040936 : CoveredBy scale carrier boxes root_5040936 := by
  apply coveredBy_split_literal root_5040936 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.root_5040941 small_5040936_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.cover_5040941
  · exact small_5040936_right_covered
#print axioms cover_5040936

def root_5038448 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5038448 : CoveredBy scale carrier boxes root_5038448 := by
  apply coveredBy_split_literal root_5038448 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1885.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.root_5040936 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1885.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.cover_5040936
#print axioms cover_5038448

def root_5038443 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5038443_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5038443_right_fuel : Nat := 1
def small_5038443_right_count : Nat := 1
def small_5038443_right_encoded : String := "00000002"
theorem small_5038443_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5038443_right_root small_5038443_right_fuel small_5038443_right_count small_5038443_right_encoded = true := by
  decide +kernel
theorem small_5038443_right_covered : CoveredBy scale carrier boxes small_5038443_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5038443_right_root small_5038443_right_fuel small_5038443_right_count small_5038443_right_encoded small_5038443_right_checked

theorem cover_5038443 : CoveredBy scale carrier boxes root_5038443 := by
  apply coveredBy_split_literal root_5038443 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.root_5038448 small_5038443_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.cover_5038448
  · exact small_5038443_right_covered
#print axioms cover_5038443

def root_5034357 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5034357 : CoveredBy scale carrier boxes root_5034357 := by
  apply coveredBy_split_literal root_5034357 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.root_5034358 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.root_5038443 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.cover_5034358
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.cover_5038443
#print axioms cover_5034357

def root_5034352 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5034352_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5034352_right_fuel : Nat := 1
def small_5034352_right_count : Nat := 1
def small_5034352_right_encoded : String := "00000001"
theorem small_5034352_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5034352_right_root small_5034352_right_fuel small_5034352_right_count small_5034352_right_encoded = true := by
  decide +kernel
theorem small_5034352_right_covered : CoveredBy scale carrier boxes small_5034352_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5034352_right_root small_5034352_right_fuel small_5034352_right_count small_5034352_right_encoded small_5034352_right_checked

theorem cover_5034352 : CoveredBy scale carrier boxes root_5034352 := by
  apply coveredBy_split_literal root_5034352 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.root_5034357 small_5034352_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.cover_5034357
  · exact small_5034352_right_covered
#print axioms cover_5034352

def root_5032572 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_5032572 : CoveredBy scale carrier boxes root_5032572 := by
  apply coveredBy_split_literal root_5032572 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1882.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.root_5034352 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1882.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.cover_5034352
#print axioms cover_5032572

def root_5032567 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5032567_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_5032567_right_fuel : Nat := 1
def small_5032567_right_count : Nat := 1
def small_5032567_right_encoded : String := "00000000"
theorem small_5032567_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_5032567_right_root small_5032567_right_fuel small_5032567_right_count small_5032567_right_encoded = true := by
  decide +kernel
theorem small_5032567_right_covered : CoveredBy scale carrier boxes small_5032567_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_5032567_right_root small_5032567_right_fuel small_5032567_right_count small_5032567_right_encoded small_5032567_right_checked

theorem cover_5032567 : CoveredBy scale carrier boxes root_5032567 := by
  apply coveredBy_split_literal root_5032567 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.root_5032572 small_5032567_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125.cover_5032572
  · exact small_5032567_right_covered
#print axioms cover_5032567

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0125
