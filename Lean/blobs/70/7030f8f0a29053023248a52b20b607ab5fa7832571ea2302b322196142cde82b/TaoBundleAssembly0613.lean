import TaoBundleAssembly0612
import TaoBundleChunkBatch0838
import TaoBundleChunkBatch0839
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0613
def root_8954436 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8954436_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8954436_right_fuel : Nat := 27
def small_8954436_right_count : Nat := 363
def small_8954436_right_encoded : String := "1151E8FD0A0000FE1152250908A91305120701040000000208A91309120700FE0500010000000005135D8101050000F800000005135D450300000001050000FC00000005135D44FD0000000600000003000000000000000412073CFE0000000405000100135D450100000000050000F8135D8103050000FC135D80FD0000000304548A0513867104000000020CFD9C09000000050F350CFE000000040C9A86FE000000070F87510900000004000000071386AD040CFD9C090F34D0FE00000005000000040F350CFE000000040C9A86FE0F878D09028001000000000800000008000000040000000800000002135D44FD04548A0513867104000000020CFD9C0900000005000000071386AD040CFD9C090F34D0FE00000005000000040F350CFE000000040C9A86FE0F878D090280010000000007000000080000000400000008000000020000000300000001135D450300000001050000FC135D80FD0000000304548A05000000071386AD040CFD9C09000000080000000800000002135D44FD04548A05000000071386AD040CFD9C0900000008000000070000000200000003135D8101050000F8135D8103050000FC135D80FD0000000304548A0513867104000000020CFD9C090F34D0FE00000005000000040F350CFE000000040C9A86FE0F878D090780010000000005128A7D010000000500000000000000040F8751090000000407800100128A410100000000078000F80000000900000007128A7D01078000F8128A7D03078000FC00000005000000080000000100000008000000001386AD040CFD9C090F34D0FE00000006000000040F350CFE000000040C9A86FE0F878D09078001000000000800000006000000040000000800000002135D44FD04548A0513867104000000020CFD9C090F34D0FE00000005000000040F350CFE000000040C9A86FE0F878D0907800100128A41010000000000000007128A7D01078000F800000005128A4103000000010000000700000000000000040F8751090000000407800100128A410100000000078000F80000000900000007128A7D01078000F8128A7D03028000FC0000000813D7B0FD022A45850000000700000008000000030000000100000008000000001386AD040CFD9C090F34D0FE00000006000000040F350CFE000000040C9A86FE0F878D090780010000000008128A7D0100000006000000000000000400000008000000020000000300000001135D450300000001050000FC135D80FD0000000304548A0513867104000000020CFD9C090F34D0FE00000007000000040F350CFE000000040C9A86FE00000007000000081386AD040CFD9C09000000080000000800000002135D44FD04548A0513867104000000020CFD9C090F34D0FE0000000700000004000000071386AD040CFD9C09000000080000000800000002000000030000000012073D0408A91309120700FE000000060000000412073CFE0000000405000100135D450100000000050000F8135D8103050000FC135D80FD000000030CFD9C050F34D104000000020CFD9C090F34D0FE00000006000000040000000800000008135D44FD0CFD9C050F34D104000000020CFD9C090000000800000008000000080000000300000001135D45030000000100000008135D8101050000F8135D8103050000FC135D80FD000000030CFD9C050F34D104000000020CFD9C09000000060000000600000006135D44FD0CFD9C050F34D104000000020CFD9C09000000060F350CFE0000000400000008000000060000000300000001135D450300000001050000FC00000008000000080000000000000002000000041151E9090000000408A91305120701040000000205000100135D450100000000050000F80000000900000008135D8101050000F8135D8103050000FC00000008135D44FD050000FE135D810904548A05138671040000000200000009000000080000000400000008000000030000000100000008000000000000000800000003"
theorem small_8954436_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8954436_right_root small_8954436_right_fuel small_8954436_right_count small_8954436_right_encoded = true := by
  decide +kernel
theorem small_8954436_right_covered : CoveredBy scale carrier boxes small_8954436_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8954436_right_root small_8954436_right_fuel small_8954436_right_count small_8954436_right_encoded small_8954436_right_checked

theorem cover_8954436 : CoveredBy scale carrier boxes root_8954436 := by
  apply coveredBy_split_literal root_8954436 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0612.root_8954437 small_8954436_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0612.cover_8954437
  · exact small_8954436_right_covered
#print axioms cover_8954436

def root_8954431 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8954431_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8954431_right_fuel : Nat := 1
def small_8954431_right_count : Nat := 1
def small_8954431_right_encoded : String := "00000002"
theorem small_8954431_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8954431_right_root small_8954431_right_fuel small_8954431_right_count small_8954431_right_encoded = true := by
  decide +kernel
theorem small_8954431_right_covered : CoveredBy scale carrier boxes small_8954431_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8954431_right_root small_8954431_right_fuel small_8954431_right_count small_8954431_right_encoded small_8954431_right_checked

theorem cover_8954431 : CoveredBy scale carrier boxes root_8954431 := by
  apply coveredBy_split_literal root_8954431 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0613.root_8954436 small_8954431_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0613.cover_8954436
  · exact small_8954431_right_covered
#print axioms cover_8954431

def root_8954363 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8954363_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8954363_left_fuel : Nat := 11
def small_8954363_left_count : Nat := 31
def small_8954363_left_encoded : String := "1151E905000000020A0000FC115224FD000000030A0000FE1152250908A912FD12073CFC0000000308A913090000000612073CFE00000004050001000000000800000006120700FC0000000A00000003000000041151E90900000004000000051151E8FD0A0000FE1152250900000006000000040000000800000003"
theorem small_8954363_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8954363_left_root small_8954363_left_fuel small_8954363_left_count small_8954363_left_encoded = true := by
  decide +kernel
theorem small_8954363_left_covered : CoveredBy scale carrier boxes small_8954363_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8954363_left_root small_8954363_left_fuel small_8954363_left_count small_8954363_left_encoded small_8954363_left_checked

theorem cover_8954363 : CoveredBy scale carrier boxes root_8954363 := by
  apply coveredBy_split_literal root_8954363 small_8954363_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0613.root_8954431 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8954363_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0613.cover_8954431
#print axioms cover_8954363

def root_8954357 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8954357_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8954357_left_fuel : Nat := 1
def small_8954357_left_count : Nat := 1
def small_8954357_left_encoded : String := "00000001"
theorem small_8954357_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8954357_left_root small_8954357_left_fuel small_8954357_left_count small_8954357_left_encoded = true := by
  decide +kernel
theorem small_8954357_left_covered : CoveredBy scale carrier boxes small_8954357_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8954357_left_root small_8954357_left_fuel small_8954357_left_count small_8954357_left_encoded small_8954357_left_checked

theorem cover_8954357 : CoveredBy scale carrier boxes root_8954357 := by
  apply coveredBy_split_literal root_8954357 small_8954357_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0613.root_8954363 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_8954357_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0613.cover_8954363
#print axioms cover_8954357

def root_8929311 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8929311 : CoveredBy scale carrier boxes root_8929311 := by
  apply coveredBy_split_literal root_8929311 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0612.root_8929312 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0613.root_8954357 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0612.cover_8929312
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0613.cover_8954357
#print axioms cover_8929311

def root_8929305 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8929305_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8929305_left_fuel : Nat := 1
def small_8929305_left_count : Nat := 1
def small_8929305_left_encoded : String := "00000000"
theorem small_8929305_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8929305_left_root small_8929305_left_fuel small_8929305_left_count small_8929305_left_encoded = true := by
  decide +kernel
theorem small_8929305_left_covered : CoveredBy scale carrier boxes small_8929305_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8929305_left_root small_8929305_left_fuel small_8929305_left_count small_8929305_left_encoded small_8929305_left_checked

theorem cover_8929305 : CoveredBy scale carrier boxes root_8929305 := by
  apply coveredBy_split_literal root_8929305 small_8929305_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0613.root_8929311 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_8929305_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0613.cover_8929311
#print axioms cover_8929305

def root_8962310 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8962310 : CoveredBy scale carrier boxes root_8962310 := by
  apply coveredBy_split_literal root_8962310 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3351.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3352.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3351.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3352.covered
#print axioms cover_8962310

def root_8962305 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8962305_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8962305_right_fuel : Nat := 1
def small_8962305_right_count : Nat := 1
def small_8962305_right_encoded : String := "00000002"
theorem small_8962305_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8962305_right_root small_8962305_right_fuel small_8962305_right_count small_8962305_right_encoded = true := by
  decide +kernel
theorem small_8962305_right_covered : CoveredBy scale carrier boxes small_8962305_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8962305_right_root small_8962305_right_fuel small_8962305_right_count small_8962305_right_encoded small_8962305_right_checked

theorem cover_8962305 : CoveredBy scale carrier boxes root_8962305 := by
  apply coveredBy_split_literal root_8962305 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0613.root_8962310 small_8962305_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0613.cover_8962310
  · exact small_8962305_right_covered
#print axioms cover_8962305

def root_8961675 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8961675_left_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8961675_left_fuel : Nat := 31
def small_8961675_left_count : Nat := 293
def small_8961675_left_encoded : String := "1151E905000000020A0000FC115224FD000000030A0000FE1152250908A91301120701000000000008A91303120700F800000006000000010000000612073D0008A91303120700F808A912FD00000006120700FC08A913090000000612073CFE000000040500010400000006135D81050CFD9C010F34D10000000000000000060F350D0004548A03138670F8045489FD000000060000000600000001000000060000000000000002000000030000000112073CF80000000108A912FD00000006120700FC000000060000000300000000000000041151E9090000000408A91301120701000000000008A91303120700F808A912FD00000006120700FC00000008000000030000000112073CF8000000010000000812073D0008A91303120700F808A912FD12073CFC0000000305000104135D45050000000200000008135D8105050000FE135D81090CFD9C010F34D10000000000000000060F350D0004548A03138670F80CFD9BFD000000060F34D0FC000000060000000300000001000000060000000000000004135D4509000000040000000800000002120700FC05000104135D450500000002050000FE135D81090CFD9C010F34D10000000000000000060F350D0004548A03138670F8045489FD00000006138670FC000000060000000300000001000000060000000000000004135D45090000000400000008135D8105050000FE135D81090CFD9C010F34D10000000000000000060F350D0004548A03138670F8045489FD1386ACFC000000030C9A87000F875101000000000780010400000006128A7D05078000FE00000006128A410900000004000000080000000200000006138670FC0C9A87000F8751010000000007800104128A410500000002078000FE00000006128A410900000004022A45830000000800000005128A7D05078000FE128A7D09022A458313E1C4F8022A457D0000000600000007000000010000000600000004128A410900000004022A458313E1C4F8022A457D0000000A000000050000000100000005000000020F878D010780010400000006128A7D050000000A000000020000000000000003000000011386ACF800000001045489FD00000006138670FC00000006000000030000000000000004135D4509000000040CFD9C01000000080F350D0004548A03138670F8045489FD00000008138670FC0C9A87000F875101000000000780010400000008128A7D05028000FE13D7ED09022A45830000000A000000050000000400000008000000020F878D0100000008000000000000000300000001000000080000000000000002000000030000000112073CF80000000108A912FD12073CFC000000030500010400000006135D8105050000FE000000060000000800000002120700FC05000104135D45050000000200000008135D8105050000FE135D81090CFD9C01000000060F350D000CFD9C030F34D0F80000000600000001000000050000000000000004135D450900000004000000080000000200000003000000001151E8FD0A0000FE1152250900000006000000041151E9090000000408A9130112070100000000000000000612073D0008A9130300000008000000060000000000000003"
theorem small_8961675_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8961675_left_root small_8961675_left_fuel small_8961675_left_count small_8961675_left_encoded = true := by
  decide +kernel
theorem small_8961675_left_covered : CoveredBy scale carrier boxes small_8961675_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8961675_left_root small_8961675_left_fuel small_8961675_left_count small_8961675_left_encoded small_8961675_left_checked

theorem cover_8961675 : CoveredBy scale carrier boxes root_8961675 := by
  apply coveredBy_split_literal root_8961675 small_8961675_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0613.root_8962305 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_8961675_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0613.cover_8962305
#print axioms cover_8961675

def root_8961670 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8961670_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8961670_right_fuel : Nat := 1
def small_8961670_right_count : Nat := 1
def small_8961670_right_encoded : String := "00000001"
theorem small_8961670_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8961670_right_root small_8961670_right_fuel small_8961670_right_count small_8961670_right_encoded = true := by
  decide +kernel
theorem small_8961670_right_covered : CoveredBy scale carrier boxes small_8961670_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8961670_right_root small_8961670_right_fuel small_8961670_right_count small_8961670_right_encoded small_8961670_right_checked

theorem cover_8961670 : CoveredBy scale carrier boxes root_8961670 := by
  apply coveredBy_split_literal root_8961670 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0613.root_8961675 small_8961670_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0613.cover_8961675
  · exact small_8961670_right_covered
#print axioms cover_8961670

def root_8961669 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8961669 : CoveredBy scale carrier boxes root_8961669 := by
  apply coveredBy_split_literal root_8961669 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0613.root_8961670 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3353.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0613.cover_8961670
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3353.covered
#print axioms cover_8961669

def root_8961664 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8961664_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8961664_right_fuel : Nat := 1
def small_8961664_right_count : Nat := 1
def small_8961664_right_encoded : String := "00000000"
theorem small_8961664_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8961664_right_root small_8961664_right_fuel small_8961664_right_count small_8961664_right_encoded = true := by
  decide +kernel
theorem small_8961664_right_covered : CoveredBy scale carrier boxes small_8961664_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8961664_right_root small_8961664_right_fuel small_8961664_right_count small_8961664_right_encoded small_8961664_right_checked

theorem cover_8961664 : CoveredBy scale carrier boxes root_8961664 := by
  apply coveredBy_split_literal root_8961664 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0613.root_8961669 small_8961664_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0613.cover_8961669
  · exact small_8961664_right_covered
#print axioms cover_8961664

def root_8929304 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_8929304 : CoveredBy scale carrier boxes root_8929304 := by
  apply coveredBy_split_literal root_8929304 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0613.root_8929305 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0613.root_8961664 coord0 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0613.cover_8929305
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0613.cover_8961664
#print axioms cover_8929304

def root_8928762 : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8928762_left_root : ZRayBox := fun j => (#[⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8928762_left_fuel : Nat := 20
def small_8928762_left_count : Nat := 249
def small_8928762_left_encoded : String := "0A0001001151E901000000000A0000F8115225030A0001041151E905000000020A0000FC115224FD000000030A0000FE115224FF0000000408A91303120700F80000000600000001000000061151E8FF00000006000000041151E8FD0000000600000003115225050A0000FC115224FD000000030A0000FE115224FF0000000408A91303120700F808A913050000000512073D0408A912FD0000000500000007000000020000000112073CF80000000108A91305120701040000000208A912FD00000005120700FC08A912FF00000005120700FE050001000000000800000005000000040000000312073D0408A912FD12073CFC0000000308A912FF00000005120700FE0000000600000004120700FC08A912FF00000006120700FE000000060000000400000003000000021151E8FF00000005000000041151E8FD0A0000FE000000051151E8FF00000005000000040000000300000002000000011151E903000000010A0001041151E905000000020A0000FC000000061151E8FD0000000600000003115225050A0000FC115224FD000000030A0000FE115224FF0000000408A91305120701040000000208A912FD12073CFC0000000308A912FF00000005120700FE00000005000000040000000A12073D0408A912FD000000060000000A000000021151E8FF0000000A000000041151E8FD0A0000FE115224FF0000000408A91305120701040000000208A912FF00000005120700FE0000000500000004000000061151E8FF00000006000000040000000300000002115225010A0000F8115225030A0001041151E905000000020A0000FC000000061151E8FD0000000600000003115225050A0000FC115224FD000000030A0000FE115224FF0000000408A91301120701000000000008A91303000000050000000612073D0008A91303120700F8000000050000000112073CF80000000108A91305120701040000000208A912FD00000005120700FC000000050000000300000006000000001151E8FF08A9130112070100000000000000000612073D0008A91303000000050000000600000000000000041151E8FD0A0000FE115224FF0000000408A9130112070100000000000000000612073D0008A913030000000500000006000000001151E8FF00000006000000040000000300000002000000011151E903000000010A0001041151E9050000000200000006115225050A0000FC115224FD000000030A0000FE115224FF0000000408A9130112070100000000000000000612073D0008A91305120701040000000208A912FD00000006120700FC000000060000000300000006000000001151E8FF00000006000000041151E8FD00000006000000030000000200000000"
theorem small_8928762_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8928762_left_root small_8928762_left_fuel small_8928762_left_count small_8928762_left_encoded = true := by
  decide +kernel
theorem small_8928762_left_covered : CoveredBy scale carrier boxes small_8928762_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8928762_left_root small_8928762_left_fuel small_8928762_left_count small_8928762_left_encoded small_8928762_left_checked

theorem cover_8928762 : CoveredBy scale carrier boxes root_8928762 := by
  apply coveredBy_split_literal root_8928762 small_8928762_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0613.root_8929304 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact small_8928762_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0613.cover_8929304
#print axioms cover_8928762

def root_8970638 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8970638_right_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8970638_right_fuel : Nat := 21
def small_8970638_right_count : Nat := 195
def small_8970638_right_encoded : String := "1151E903000000010A0001041151E905000000020A0000FC115224FD000000030A0001081151E90900000004000000051152250908A912FD12073CFC0000000308A913090000000A00000008120700FC08A91309120701080000000405000100135D4501000000000000000A135D8101050000F8000000080000000A000000000000000500000003000000041151E8FD0000000A00000003115225050A0000FC115224FD000000030A0001081151E9090000000408A91305120701040000000208A912FD00000008120700FC05000100135D450100000000050000F8135D810305000108135D45090000000400000008000000080000000100000008135D8101050000F8135D810305000108135D45090000000400000008000000080000000100000008000000000000000312073D0408A912FD0000000800000005000000021152250908A91305120701040000000208A912FD12073CFC0000000308A9130912070108000000040000000900000008120700FC08A91309120701080000000405000100000000090000000912073D0805000100135D450100000000050000F8000000080000000800000008000000040000000312073D0408A912FD12073CFC0000000308A9130912070108000000040500010000000009135D8101050000F800000008135D450300000001000000080000000012073D0805000100135D450100000000000000080000000800000004120700FC08A91309120701080000000405000100135D450100000000050000F800000009135D4503000000010CFD9C050000000900000009135D8101050000F8135D81030CFD9C050F34D10400000002000000070F350D04045489FD00000007000000050000000200000001135D4503000000010CFD9C0500000008000000050000000012073D0805000100135D450100000000050000F8135D81030CFD9C05000000080000000500000001135D45030000000100000005135D8101050000F8000000080000000800000000000000040000000300000002000000041151E8FD0A0001081151E9090000000400000008000000080000000300000002"
theorem small_8970638_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8970638_right_root small_8970638_right_fuel small_8970638_right_count small_8970638_right_encoded = true := by
  decide +kernel
theorem small_8970638_right_covered : CoveredBy scale carrier boxes small_8970638_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8970638_right_root small_8970638_right_fuel small_8970638_right_count small_8970638_right_encoded small_8970638_right_checked

theorem cover_8970638 : CoveredBy scale carrier boxes root_8970638 := by
  apply coveredBy_split_literal root_8970638 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3355.root small_8970638_right_root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3355.covered
  · exact small_8970638_right_covered
#print axioms cover_8970638

def root_8970632 : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8970632_left_root : ZRayBox := fun j => (#[⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8970632_left_fuel : Nat := 1
def small_8970632_left_count : Nat := 1
def small_8970632_left_encoded : String := "00000000"
theorem small_8970632_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8970632_left_root small_8970632_left_fuel small_8970632_left_count small_8970632_left_encoded = true := by
  decide +kernel
theorem small_8970632_left_covered : CoveredBy scale carrier boxes small_8970632_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8970632_left_root small_8970632_left_fuel small_8970632_left_count small_8970632_left_encoded small_8970632_left_checked

theorem cover_8970632 : CoveredBy scale carrier boxes root_8970632 := by
  apply coveredBy_split_literal root_8970632 small_8970632_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0613.root_8970638 coord0 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_8970632_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0613.cover_8970638
#print axioms cover_8970632

def root_8974539 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8974539_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8974539_right_fuel : Nat := 17
def small_8974539_right_count : Nat := 119
def small_8974539_right_encoded : String := "1151E8FD0A0001081151E9090000000408A91301120701000000000008A91303120700F808A913050000000A000000070000000112073CF80000000108A913051207010400000002000000070000000712073D0008A91303120700F808A913051207010400000002050000FC0000000A0000000712073D04050000FC00000008135D44FD0000000800000003000000020000000112073CF80000000108A913051207010400000002050000FC135D80FD0000000305000108135D4509000000040CFD9C01000000080F350D000CFD9C0300000008000000080000000000000008135D44FD05000108135D4509000000040CFD9C010F34D10000000000000000070F350D000000000900000000000000080000000312073D040000000800000002000000001152250908A91301120701000000000008A913030000000812073CF80000000108A913051207010400000002000000070000000712073D0008A91303120700F808A91305120701040000000208A91309000000070000000912073D0408A9130912070108000000040000000800000008000000020000000112073CF80000000108A91305120701040000000208A913090000000712073D08050000FC00000008000000070000000400000008000000000000000400000003"
theorem small_8974539_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8974539_right_root small_8974539_right_fuel small_8974539_right_count small_8974539_right_encoded = true := by
  decide +kernel
theorem small_8974539_right_covered : CoveredBy scale carrier boxes small_8974539_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8974539_right_root small_8974539_right_fuel small_8974539_right_count small_8974539_right_encoded small_8974539_right_checked

theorem cover_8974539 : CoveredBy scale carrier boxes root_8974539 := by
  apply coveredBy_split_literal root_8974539 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3356.root small_8974539_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk3356.covered
  · exact small_8974539_right_covered
#print axioms cover_8974539

def root_8974534 : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8974534_right_root : ZRayBox := fun j => (#[⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_8974534_right_fuel : Nat := 1
def small_8974534_right_count : Nat := 1
def small_8974534_right_encoded : String := "00000002"
theorem small_8974534_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_8974534_right_root small_8974534_right_fuel small_8974534_right_count small_8974534_right_encoded = true := by
  decide +kernel
theorem small_8974534_right_covered : CoveredBy scale carrier boxes small_8974534_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_8974534_right_root small_8974534_right_fuel small_8974534_right_count small_8974534_right_encoded small_8974534_right_checked

theorem cover_8974534 : CoveredBy scale carrier boxes root_8974534 := by
  apply coveredBy_split_literal root_8974534 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0613.root_8974539 small_8974534_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0613.cover_8974539
  · exact small_8974534_right_covered
#print axioms cover_8974534

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0613
