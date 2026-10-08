import TaoBundleAssembly0064
import TaoBundleChunkBatch0262
import TaoBundleChunkBatch0263
import TaoBundleChunkBatch0264
import TaoBundleChunkBatch0265
import TaoBundleChunkBatch0266
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065
def root_2729241 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2729241 : CoveredBy scale carrier boxes root_2729241 := by
  apply coveredBy_split_literal root_2729241 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1048.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1049.root coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1048.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1049.covered
#print axioms cover_2729241

def root_2729235 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2729235_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2729235_left_fuel : Nat := 1
def small_2729235_left_count : Nat := 1
def small_2729235_left_encoded : String := "00000004"
theorem small_2729235_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2729235_left_root small_2729235_left_fuel small_2729235_left_count small_2729235_left_encoded = true := by
  decide +kernel
theorem small_2729235_left_covered : CoveredBy scale carrier boxes small_2729235_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2729235_left_root small_2729235_left_fuel small_2729235_left_count small_2729235_left_encoded small_2729235_left_checked

theorem cover_2729235 : CoveredBy scale carrier boxes root_2729235 := by
  apply coveredBy_split_literal root_2729235 small_2729235_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.root_2729241 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_2729235_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.cover_2729241
#print axioms cover_2729235

def root_2729234 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2729234_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2729234_right_fuel : Nat := 24
def small_2729234_right_count : Nat := 309
def small_2729234_right_encoded : String := "1151E8FF08A91301120700F608A91305120700FA050000F8135D80F90000000105000106135D44FD050000FE135D80FF0000000404548A010000000A1386ACF6000000000000000A0000000A00000003135D80FD00000003050000FE135D80FF0000000404548A01000000071386ACF60000000004548A05000000060000000600000007135D44F905000106135D44FD050000FE135D80FF0000000404548A01138670F604548A05000000051386ACFA0000000200000007000000001386ACF60000000004548A05138670FA028000F80000000A13D7B0F90000000A00000001000000021386ACFA00000002028000F813D7ECF90000000102800106000000070000000713D7B0F90280010613D7B0FD078000FE128A7CFF00000004067ECE810000000A12EA94F6000000000000000A0000000A0000000313D7ECFD00000003078000FE128A7CFF00000004067ECE8100000007000000060000000700000001135D44FF04548A01000000071386ACF60000000004548A050000000A000000070000000400000003135D80FD00000003050000FE135D80FF0000000404548A01138670F604548A05138670FA028000F80000000713D7B0F9078001060000000A128A7CFD00000003078000FE128A7CFF000000040000000700000007000000010000000200000007000000001386ACF60000000004548A05138670FA028000F813D7ECF9000000010000000613D7B0F907800106128A40FD078000FE128A7CFF00000004067ECE8112EA58F60000000A00000000000000060000000600000003128A7CFD00000003078000FE000000060000000600000001000000021386ACFA00000002028000F80000000713D7B0F907800106000000070000000700000001135D44FF04548A01000000071386ACF6000000000000000700000004000000010000000212073CFA00000002050000F800000007135D44F905000106135D44FD050000FE135D80FF0000000404548A0100000007000000070000000700000003135D80FD0000000300000007000000010000000012073CF60000000008A91305120700FA050000F8135D80F90000000105000106135D44FD000000060000000300000006135D44F905000106135D44FD050000FE135D80FF000000040CFD9C010F34D0F604548A05138670FA00000006000000021386ACFA00000002028000F80000000613D7B0F9000000060000000100000000000000060000000600000003135D80FD00000003050000FE135D80FF000000040CFD9C010F34D0F604548A050000000600000006000000000000000600000006000000010000000212073CFA00000002050000F8135D80F90000000105000106135D44FD050000FE135D80FF000000040CFD9C01000000070F350CF60000000000000006135D44FF0CFD9C0100000007000000050000000400000003135D80FD00000003050000FE0000000700000005135D44F905000106135D44FD050000FE135D80FF000000040CFD9C010F34D0F60CFD9C050F34D0FA028000F80000000613D7B0F90280010613D7B0FD078000FE00000006000000060000000313D7ECFD00000003000000070000000100000002000000050000000000000005135D44FF0CFD9C010F34D0F60000000700000000000000050000000400000003135D80FD00000003050000FE135D80FF0000000400000005000000050000000100000004"
theorem small_2729234_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2729234_right_root small_2729234_right_fuel small_2729234_right_count small_2729234_right_encoded = true := by
  decide +kernel
theorem small_2729234_right_covered : CoveredBy scale carrier boxes small_2729234_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2729234_right_root small_2729234_right_fuel small_2729234_right_count small_2729234_right_encoded small_2729234_right_checked

theorem cover_2729234 : CoveredBy scale carrier boxes root_2729234 := by
  apply coveredBy_split_literal root_2729234 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.root_2729235 small_2729234_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.cover_2729235
  · exact small_2729234_right_covered
#print axioms cover_2729234

def root_2729229 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2729229_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2729229_right_fuel : Nat := 1
def small_2729229_right_count : Nat := 1
def small_2729229_right_encoded : String := "00000003"
theorem small_2729229_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2729229_right_root small_2729229_right_fuel small_2729229_right_count small_2729229_right_encoded = true := by
  decide +kernel
theorem small_2729229_right_covered : CoveredBy scale carrier boxes small_2729229_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2729229_right_root small_2729229_right_fuel small_2729229_right_count small_2729229_right_encoded small_2729229_right_checked

theorem cover_2729229 : CoveredBy scale carrier boxes root_2729229 := by
  apply coveredBy_split_literal root_2729229 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.root_2729234 small_2729229_right_root coord3 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.cover_2729234
  · exact small_2729229_right_covered
#print axioms cover_2729229

def root_2729228 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2729228_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2729228_right_fuel : Nat := 27
def small_2729228_right_count : Nat := 433
def small_2729228_right_encoded : String := "115224FD000000030A0000FE115224FF0000000408A91301120700F608A91305120700FA08A912FD12073D0608A912FF12073CFE00000004050000F8135D80F90000000104548A01000000091386ACF60000000004548A05138670FA0CFD9BFD0F350D060CFD9BFF0F350CFE000000040C9A87060F8750FD0C9A86FE0000000800000008000000030000000900000008000000030F34D10600000003000000090000000200000009135D44F904548A01000000091386ACF60000000004548A05138670FA0CFD9BFD0F350D060CFD9BFF0F350CFE000000040C9A87060F8750FD0C9A86FE000000090F8750FF028000F8000000080000000800000004000000030000000900000009000000030F34D1060000000300000009000000020000000900000001000000090000000312070106000000030000000900000002000000090000000012073CF60000000008A91305120700FA08A912FD12073D0608A912FF12073CFE00000004050000F8135D80F9000000010CFD9C010F34D0F604548A05138670FA0CFD9BFD0F350D060CFD9BFF0F350CFE000000040C9A87060F8750FD0000000600000003000000060F34D0FE0000000800000004000000030F34D106000000030CFD9BFF0F350CFE000000040C9A86FE000000060000000500000005000000021386ACFA000000020CFD9BFD0F350D060CFD9BFF0F350CFE000000040C9A87060F8750FD0C9A86FE0000000600000006000000030000000900000009000000030F34D1060000000300000005000000000F350CF60000000004548A05138670FA0CFD9BFD0F350D060CFD9BFF000000060F34D0FE0C9A86F60F878D010C9A87060000000600000005000000000000000500000004000000030F34D1060000000300000005000000021386ACFA000000020CFD9BFD0F350D060CFD9BFF00000006000000050000000300000005135D44F90CFD9C010F34D0F604548A05138670FA0CFD9BFD0F350D060CFD9BFF0F350CFE000000040C9A87060F8750FD0C9A86FE0F878CFF00000004000000080F8750FF0000000600000004000000030F878CFD000000030C9A86FE0F878CFF00000004000000080F8750FF00000006000000040F34D0FE0000000800000004000000030F34D106000000030CFD9BFF0F350CFE000000040000000500000005000000021386ACFA000000020CFD9BFD0F350D060CFD9BFF0F350CFE000000040C9A87060F8750FD0C9A86FE0F878CFF0000000400000005000000050000000300000005000000050000000300000005000000000F350CF60000000004548A05138670FA0CFD9BFD0F350D060CFD9BFF0F350CFE0000000400000005000000050000000300000005000000020000000500000001120700FE050000F8135D80F9000000010CFD9C01000000090F350CF60000000000000005135D44F90CFD9C0100000009000000050000000100000004000000031207010600000003000000050000000212073CFA0000000208A912FD12073D0608A912FF12073CFE00000004050000F8135D80F9000000010CFD9C010F34D0F60CFD9C050F34D0FA0CFD9BFD0F350D060CFD9BFF0F350CFE000000040000000500000005000000030000000500000002000000050000000000000005000000050000000500000003000000051151E8FF08A91301120700F608A91305120700FA08A912FD12073D06050000F8135D80F900000001050000FE135D80FF0000000404548A01000000071386ACF6000000000000000700000007135D44F9050000FE135D80FF0000000404548A01138670F604548A05138670FA0CFD9BFD0F350D060000000700000003000000070000000200000007000000001386ACF60000000004548A05138670FA0CFD9BFD0F350D060C9A87060F8750FD028000F80000000613D7B0F9078000FE000000060000000600000001000000030F878CFD000000030000000700000003000000070000000200000007135D44FF00000007000000040000000100000003000000070000000212073CFA0000000208A912FD12073D06050000F800000007135D44F9000000070000000100000003000000050000000012073CF60000000008A91305120700FA08A912FD12073D06050000F8135D80F900000001050000FE135D80FF000000040CFD9C010F34D0F604548A050000000600000007000000000000000600000006135D44F9050000FE135D80FF000000040CFD9C010F34D0F604548A05138670FA0CFD9BFD000000060F34D1060000000300000005000000021386ACFA000000020CFD9BFD0F350D06000000070000000300000005000000000F350CF60000000000000005135D44FF0CFD9C01000000070000000500000004000000010000000300000005000000020000000500000004"
theorem small_2729228_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2729228_right_root small_2729228_right_fuel small_2729228_right_count small_2729228_right_encoded = true := by
  decide +kernel
theorem small_2729228_right_covered : CoveredBy scale carrier boxes small_2729228_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2729228_right_root small_2729228_right_fuel small_2729228_right_count small_2729228_right_encoded small_2729228_right_checked

theorem cover_2729228 : CoveredBy scale carrier boxes root_2729228 := by
  apply coveredBy_split_literal root_2729228 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.root_2729229 small_2729228_right_root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.cover_2729229
  · exact small_2729228_right_covered
#print axioms cover_2729228

def root_2729223 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2729223_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2729223_right_fuel : Nat := 1
def small_2729223_right_count : Nat := 1
def small_2729223_right_encoded : String := "00000002"
theorem small_2729223_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2729223_right_root small_2729223_right_fuel small_2729223_right_count small_2729223_right_encoded = true := by
  decide +kernel
theorem small_2729223_right_covered : CoveredBy scale carrier boxes small_2729223_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2729223_right_root small_2729223_right_fuel small_2729223_right_count small_2729223_right_encoded small_2729223_right_checked

theorem cover_2729223 : CoveredBy scale carrier boxes root_2729223 := by
  apply coveredBy_split_literal root_2729223 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.root_2729228 small_2729223_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.cover_2729228
  · exact small_2729223_right_covered
#print axioms cover_2729223

def root_2729222 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2729222_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2729222_right_fuel : Nat := 17
def small_2729222_right_count : Nat := 65
def small_2729222_right_encoded : String := "1151E905000000020A0001061151E8FD0A0000FE115224FF0000000408A91301120700F608A912FF12073CFE00000004050000F8135D80F900000001050000FA135D810505000106000000070000000900000002135D450500000002050001060000000700000005135D44F9050000FA135D810505000106135D44FD04548A0100000007000000050000000300000005000000020000000500000001000000090000000012073CF60000000008A912FF12073CFE0000000400000005000000051151E8FF08A9130100000007000000050000000400000003115224FD000000030A0000FE115224FF00000004000000051151E8FF08A91301000000070000000500000004"
theorem small_2729222_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2729222_right_root small_2729222_right_fuel small_2729222_right_count small_2729222_right_encoded = true := by
  decide +kernel
theorem small_2729222_right_covered : CoveredBy scale carrier boxes small_2729222_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2729222_right_root small_2729222_right_fuel small_2729222_right_count small_2729222_right_encoded small_2729222_right_checked

theorem cover_2729222 : CoveredBy scale carrier boxes root_2729222 := by
  apply coveredBy_split_literal root_2729222 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.root_2729223 small_2729222_right_root coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.cover_2729223
  · exact small_2729222_right_covered
#print axioms cover_2729222

def root_2729217 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2729217_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2729217_right_fuel : Nat := 1
def small_2729217_right_count : Nat := 1
def small_2729217_right_encoded : String := "00000001"
theorem small_2729217_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2729217_right_root small_2729217_right_fuel small_2729217_right_count small_2729217_right_encoded = true := by
  decide +kernel
theorem small_2729217_right_covered : CoveredBy scale carrier boxes small_2729217_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2729217_right_root small_2729217_right_fuel small_2729217_right_count small_2729217_right_encoded small_2729217_right_checked

theorem cover_2729217 : CoveredBy scale carrier boxes root_2729217 := by
  apply coveredBy_split_literal root_2729217 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.root_2729222 small_2729217_right_root coord1 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.cover_2729222
  · exact small_2729217_right_covered
#print axioms cover_2729217

def root_2725873 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2725873 : CoveredBy scale carrier boxes root_2725873 := by
  apply coveredBy_split_literal root_2725873 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.root_2725874 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.root_2729217 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0064.cover_2725874
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.cover_2729217
#print axioms cover_2725873

def root_2725868 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2725868_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2725868_right_fuel : Nat := 1
def small_2725868_right_count : Nat := 1
def small_2725868_right_encoded : String := "00000000"
theorem small_2725868_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2725868_right_root small_2725868_right_fuel small_2725868_right_count small_2725868_right_encoded = true := by
  decide +kernel
theorem small_2725868_right_covered : CoveredBy scale carrier boxes small_2725868_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2725868_right_root small_2725868_right_fuel small_2725868_right_count small_2725868_right_encoded small_2725868_right_checked

theorem cover_2725868 : CoveredBy scale carrier boxes root_2725868 := by
  apply coveredBy_split_literal root_2725868 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.root_2725873 small_2725868_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.cover_2725873
  · exact small_2725868_right_covered
#print axioms cover_2725868

def root_2725867 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2725867_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2725867_right_fuel : Nat := 23
def small_2725867_right_count : Nat := 261
def small_2725867_right_encoded : String := "1151E901000000000A0000F8115224F9000000010A0000FA115225050A0001061151E8FD0A0000FE115224FF0000000408A912F912073CF80000000108A91305120700FA08A912FF12073CFE0000000400000006120700FE050000F6135D810105000106135D44FD0CFD9BF90F350CF80000000104548A0500000006000000060000000600000003135D80FD000000030CFD9BF90F350CF80000000104548A0500000006000000050F34D0F8000000060000000100000000135D450100000000050001060000000600000005000000040000000212073CFA0000000208A912FF12073CFE00000004050000F6135D810105000106135D44FD0CFD9BF9000000060000000600000003000000050000000000000005120700FE050000F6135D810105000106135D44FD0CFD9BF90F350CF80000000100000005000000050000000300000005000000000000000500000004120700F808A91305120700FA000000060000000212073CFA0000000208A912FF00000006120700FE0000000600000004000000011151E8FF08A912F900000006000000060000000400000003115224FD000000030A0000FE115224FF0000000408A912F912073CF80000000108A91305120700FA08A912FD12073D0608A912FF12073CFE00000004050000F6135D81010CFD9BF9000000060000000500000000000000050000000500000003000000050000000200000005120700F808A91305120700FA08A912FD000000051207010600000003000000050000000212073CFA0000000208A912FD000000051207010600000003000000050000000100000005000000021151E905000000020A0001061151E8FD0000000500000003115224FD000000030A0000FE115224FF0000000408A912F900000005120700F808A912FD0000000500000007000000011151E8FF00000005000000041151E8F90A0000FA115225050A0001061151E8FD0A0000FE115224FF0000000408A91305120700FA08A912FF12073CFE00000004050000F6135D8101050000F8135D80F900000001050001060000000600000006135D44F905000106135D44FD04548A05138670FA00000006000000020000000500000003000000050000000100000000135D450100000000050000F80000000600000005120700FE050000F6135D8101050000F8135D80F90000000105000106135D44FD04548A05138670FA0000000700000002000000050000000300000005000000050000000000000005000000040000000212073CFA0000000208A912FF12073CFE0000000400000005000000051151E8FF08A91305120700FA0000000600000002000000050000000400000003115224FD000000030A0000FE115224FF00000004000000051151E8FF08A91305120700FA00000005000000020000000500000004000000021151E905000000020000000500000001"
theorem small_2725867_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2725867_right_root small_2725867_right_fuel small_2725867_right_count small_2725867_right_encoded = true := by
  decide +kernel
theorem small_2725867_right_covered : CoveredBy scale carrier boxes small_2725867_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2725867_right_root small_2725867_right_fuel small_2725867_right_count small_2725867_right_encoded small_2725867_right_checked

theorem cover_2725867 : CoveredBy scale carrier boxes root_2725867 := by
  apply coveredBy_split_literal root_2725867 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.root_2725868 small_2725867_right_root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.cover_2725868
  · exact small_2725867_right_covered
#print axioms cover_2725867

def root_2725866 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2725866 : CoveredBy scale carrier boxes root_2725866 := by
  apply coveredBy_split_literal root_2725866 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.root_2725867 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1050.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.cover_2725867
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1050.covered
#print axioms cover_2725866

def root_2725865 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2725865 : CoveredBy scale carrier boxes root_2725865 := by
  apply coveredBy_split_literal root_2725865 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.root_2725866 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1051.root coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.cover_2725866
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1051.covered
#print axioms cover_2725865

def root_2748477 : ZRayBox := fun j => (#[⟨⟨(-12756736), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2748477 : CoveredBy scale carrier boxes root_2748477 := by
  apply coveredBy_split_literal root_2748477 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1055.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1056.root coord1 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1055.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1056.covered
#print axioms cover_2748477

def root_2748471 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2748471_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-12756736)⟩, ⟨(10897344), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2748471_left_fuel : Nat := 1
def small_2748471_left_count : Nat := 1
def small_2748471_left_encoded : String := "00000000"
theorem small_2748471_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2748471_left_root small_2748471_left_fuel small_2748471_left_count small_2748471_left_encoded = true := by
  decide +kernel
theorem small_2748471_left_covered : CoveredBy scale carrier boxes small_2748471_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2748471_left_root small_2748471_left_fuel small_2748471_left_count small_2748471_left_encoded small_2748471_left_checked

theorem cover_2748471 : CoveredBy scale carrier boxes root_2748471 := by
  apply coveredBy_split_literal root_2748471 small_2748471_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.root_2748477 coord0 false (-12756736)
  · decide +kernel
  · decide +kernel
  · exact small_2748471_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.cover_2748477
#print axioms cover_2748471

def root_2748423 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2748423_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (10897344)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2748423_left_fuel : Nat := 10
def small_2748423_left_count : Nat := 23
def small_2748423_left_encoded : String := "0F34D0F6045489F900000005138670F8045489FF000000051386710800000004078000FA128A7D0507800106128A4107000000030000000A0000000700000002128A4105000000020780010600000006000000070000000100000000"
theorem small_2748423_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2748423_left_root small_2748423_left_fuel small_2748423_left_count small_2748423_left_encoded = true := by
  decide +kernel
theorem small_2748423_left_covered : CoveredBy scale carrier boxes small_2748423_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2748423_left_root small_2748423_left_fuel small_2748423_left_count small_2748423_left_encoded small_2748423_left_checked

theorem cover_2748423 : CoveredBy scale carrier boxes root_2748423 := by
  apply coveredBy_split_literal root_2748423 small_2748423_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.root_2748471 coord0 true (10897344)
  · decide +kernel
  · decide +kernel
  · exact small_2748423_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.cover_2748471
#print axioms cover_2748423

def root_2748418 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2748418_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2748418_right_fuel : Nat := 1
def small_2748418_right_count : Nat := 1
def small_2748418_right_encoded : String := "00000003"
theorem small_2748418_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2748418_right_root small_2748418_right_fuel small_2748418_right_count small_2748418_right_encoded = true := by
  decide +kernel
theorem small_2748418_right_covered : CoveredBy scale carrier boxes small_2748418_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2748418_right_root small_2748418_right_fuel small_2748418_right_count small_2748418_right_encoded small_2748418_right_checked

theorem cover_2748418 : CoveredBy scale carrier boxes root_2748418 := by
  apply coveredBy_split_literal root_2748418 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.root_2748423 small_2748418_right_root coord3 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.cover_2748423
  · exact small_2748418_right_covered
#print axioms cover_2748418

def root_2746504 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2746504 : CoveredBy scale carrier boxes root_2746504 := by
  apply coveredBy_split_literal root_2746504 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1054.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.root_2748418 coord3 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1054.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.cover_2748418
#print axioms cover_2746504

def root_2746499 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2746499_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2746499_right_fuel : Nat := 1
def small_2746499_right_count : Nat := 1
def small_2746499_right_encoded : String := "00000002"
theorem small_2746499_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2746499_right_root small_2746499_right_fuel small_2746499_right_count small_2746499_right_encoded = true := by
  decide +kernel
theorem small_2746499_right_covered : CoveredBy scale carrier boxes small_2746499_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2746499_right_root small_2746499_right_fuel small_2746499_right_count small_2746499_right_encoded small_2746499_right_checked

theorem cover_2746499 : CoveredBy scale carrier boxes root_2746499 := by
  apply coveredBy_split_literal root_2746499 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.root_2746504 small_2746499_right_root coord2 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.cover_2746504
  · exact small_2746499_right_covered
#print axioms cover_2746499

def root_2746498 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2746498_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2746498_right_fuel : Nat := 22
def small_2746498_right_count : Nat := 261
def small_2746498_right_encoded : String := "135D45050000000205000106135D4507000000030CFD9C010F34D0F600000006000000000F350CF600000000045489F91386ACF800000001045489FF0000000813867108000000040C9A86F6000000060F8751010000000000000008138670F8045489FF000000080000000600000001135D81070CFD9C010F34D0F6045489F91386ACF800000001045489FF000000051386710800000004028000FA13D7ED050780010600000006000000090000000200000006138670F8045489FF1386AD08028000FA13D7ED050780010600000005128A7D0700000005000000030000000200000006000000040000000600000001000000000F350CF600000000045489F91386ACF800000001045489FF1386AD080C9A86F6000000080F87510100000000000000080000000413867108000000040C9A86F60F878D01028000FA13D7ED0507800106128A41070000000300000006128A7D07067ECE790000000912EA58F80000000900000001000000030000000213D7B105000000020780010600000006128A7D070000000900000003000000000F87510100000000028000FA13D7ED0507800106128A410700000003067ECE790000000812EA58F80000000800000001128A7D07067ECE7912EA94F800000001022A457F0000000813E1C508000000040000000912EA58F8022A457F13E201080B4D43F6000000081080110100000000000000080000000413E1C508000000040000000900000001000000030000000213D7B105000000020780010600000008128A7D07067ECE790000000812EA58F8000000080000000100000003138670F8045489FF1386AD080C9A86F60F878D01028000FA13D7ED0507800106128A41070000000300000008128A7D07022A457913E200F800000001067ECE7F000000050000000700000007000000030000000200000008000000000F87510100000000028000FA13D7ED0507800106128A41070000000300000008128A7D07022A45790000000813E1C4F8067ECE7F0000000700000007000000010000000300000002000000080000000413867108000000040C9A86F60F878D01028000FA13D7ED050780010600000006128A7D0700000007000000030000000200000006000000000F87510100000000028000FA13D7ED0507800106128A410700000003022A457913E200F800000001022A457F000000080000000613E1C4F8022A457F13E201080B4D43F600000006108011010000000000000007000000040000000500000001128A7D07022A457913E200F800000001022A457F13E201080B4D43F6000000071080110100000000000000070000000413E1C508000000040000000900000007000000030000000213D7B105000000020780010600000006128A7D07022A457913E200F800000001022A457F000000070000000600000007000000030000000100000003"
theorem small_2746498_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2746498_right_root small_2746498_right_fuel small_2746498_right_count small_2746498_right_encoded = true := by
  decide +kernel
theorem small_2746498_right_covered : CoveredBy scale carrier boxes small_2746498_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2746498_right_root small_2746498_right_fuel small_2746498_right_count small_2746498_right_encoded small_2746498_right_checked

theorem cover_2746498 : CoveredBy scale carrier boxes root_2746498 := by
  apply coveredBy_split_literal root_2746498 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.root_2746499 small_2746498_right_root coord2 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.cover_2746499
  · exact small_2746498_right_covered
#print axioms cover_2746498

def root_2746492 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2746492_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2746492_left_fuel : Nat := 1
def small_2746492_left_count : Nat := 1
def small_2746492_left_encoded : String := "00000004"
theorem small_2746492_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2746492_left_root small_2746492_left_fuel small_2746492_left_count small_2746492_left_encoded = true := by
  decide +kernel
theorem small_2746492_left_covered : CoveredBy scale carrier boxes small_2746492_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2746492_left_root small_2746492_left_fuel small_2746492_left_count small_2746492_left_encoded small_2746492_left_checked

theorem cover_2746492 : CoveredBy scale carrier boxes root_2746492 := by
  apply coveredBy_split_literal root_2746492 small_2746492_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.root_2746498 coord4 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_2746492_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.cover_2746498
#print axioms cover_2746492

def root_2746366 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2746366_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2746366_left_fuel : Nat := 15
def small_2746366_left_count : Nat := 61
def small_2746366_left_encoded : String := "12073D08050000FA135D810505000106135D4507000000030CFD9C01000000050F350CF600000000045489F900000005138670F80CFD9BFF000000050F34D108000000040C9A86F6000000080000000500000001135D81070CFD9C01000000050F350CF600000000045489F900000005138670F80CFD9BFF000000050F34D108000000040C9A86F6000000050F87510100000000078000FA0000000500000008000000010000000300000002135D45050000000205000106135D45070000000300000008135D81070CFD9C01000000050F350CF600000000045489F900000005138670F800000008000000010000000300000004"
theorem small_2746366_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2746366_left_root small_2746366_left_fuel small_2746366_left_count small_2746366_left_encoded = true := by
  decide +kernel
theorem small_2746366_left_covered : CoveredBy scale carrier boxes small_2746366_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2746366_left_root small_2746366_left_fuel small_2746366_left_count small_2746366_left_encoded small_2746366_left_checked

theorem cover_2746366 : CoveredBy scale carrier boxes root_2746366 := by
  apply coveredBy_split_literal root_2746366 small_2746366_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.root_2746492 coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_2746366_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.cover_2746492
#print axioms cover_2746366

def root_2746361 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2746361_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2746361_right_fuel : Nat := 1
def small_2746361_right_count : Nat := 1
def small_2746361_right_encoded : String := "00000001"
theorem small_2746361_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2746361_right_root small_2746361_right_fuel small_2746361_right_count small_2746361_right_encoded = true := by
  decide +kernel
theorem small_2746361_right_covered : CoveredBy scale carrier boxes small_2746361_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2746361_right_root small_2746361_right_fuel small_2746361_right_count small_2746361_right_encoded small_2746361_right_checked

theorem cover_2746361 : CoveredBy scale carrier boxes root_2746361 := by
  apply coveredBy_split_literal root_2746361 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.root_2746366 small_2746361_right_root coord1 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.cover_2746366
  · exact small_2746361_right_covered
#print axioms cover_2746361

def root_2745991 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2745991_left_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2745991_left_fuel : Nat := 26
def small_2745991_left_count : Nat := 169
def small_2745991_left_encoded : String := "12073CF80000000108A912FF12073D0800000005000000041207010800000004050000FA135D810505000106135D4507000000030CFD9C01000000050F350CF6000000000CFD9BF9000000050F34D0F8045489FF0000000513867108000000040C9A86F60F878D0100000005000000000F87510100000000078000FA128A7D0500000005000000020000000800000001135D81070CFD9C010F34D0F600000005000000000F350CF6000000000CFD9BF90F350CF800000001045489FF0000000513867108000000040C9A86F6000000050F875101000000000C9A86F8000000050F8750F900000005000000010F34D0F8045489FF0000000513867108000000040C9A86F60F878D0100000005000000000F87510100000000078000FA128A7D050780010600000005128A7D07000000050000000300000002128A41050000000207800106128A41070000000300000008128A7D070AD357790000000510D100F8022A457F0000000513E1C508000000040B4D43F610804D01000000050000000010801101000000000000000A0000000100000003000000010000000300000002135D45050000000205000106135D4507000000030CFD9C010F34D0F600000005000000000F350CF6000000000CFD9BF9000000080F34D0F80000000800000001135D81070CFD9C010F34D0F60CFD9BF9000000050F34D0F80000000500000001000000000F350CF6000000000CFD9BF90F350CF800000001045489FF0000000813867108000000040C9A86F6000000080F87510100000000000000080F34D0F8045489FF0000000813867108000000040C9A86F60F878D01028000FA13D7ED050780010600000008128A7D070AD357790000000510D100F80000000500000001000000030000000200000008000000000F87510100000000000000080000000100000003"
theorem small_2745991_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2745991_left_root small_2745991_left_fuel small_2745991_left_count small_2745991_left_encoded = true := by
  decide +kernel
theorem small_2745991_left_covered : CoveredBy scale carrier boxes small_2745991_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2745991_left_root small_2745991_left_fuel small_2745991_left_count small_2745991_left_encoded small_2745991_left_checked

theorem cover_2745991 : CoveredBy scale carrier boxes root_2745991 := by
  apply coveredBy_split_literal root_2745991 small_2745991_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.root_2746361 coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_2745991_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.cover_2746361
#print axioms cover_2745991

def root_2745985 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2745985_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2745985_left_fuel : Nat := 1
def small_2745985_left_count : Nat := 1
def small_2745985_left_encoded : String := "00000000"
theorem small_2745985_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2745985_left_root small_2745985_left_fuel small_2745985_left_count small_2745985_left_encoded = true := by
  decide +kernel
theorem small_2745985_left_covered : CoveredBy scale carrier boxes small_2745985_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2745985_left_root small_2745985_left_fuel small_2745985_left_count small_2745985_left_encoded small_2745985_left_checked

theorem cover_2745985 : CoveredBy scale carrier boxes root_2745985 := by
  apply coveredBy_split_literal root_2745985 small_2745985_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.root_2745991 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_2745985_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.cover_2745991
#print axioms cover_2745985

def root_2745927 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2745927_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2745927_left_fuel : Nat := 13
def small_2745927_left_count : Nat := 29
def small_2745927_left_encoded : String := "120700F608A912F900000005120700F808A912FF000000051207010800000004050000FA135D810505000106135D45070000000304548A01000000051386ACF600000000045489F900000005000000060000000500000002135D4505000000020500010600000006000000060000000100000000"
theorem small_2745927_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2745927_left_root small_2745927_left_fuel small_2745927_left_count small_2745927_left_encoded = true := by
  decide +kernel
theorem small_2745927_left_covered : CoveredBy scale carrier boxes small_2745927_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2745927_left_root small_2745927_left_fuel small_2745927_left_count small_2745927_left_encoded small_2745927_left_checked

theorem cover_2745927 : CoveredBy scale carrier boxes root_2745927 := by
  apply coveredBy_split_literal root_2745927 small_2745927_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.root_2745985 coord0 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact small_2745927_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.cover_2745985
#print axioms cover_2745927

def root_2745921 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2745921_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2745921_left_fuel : Nat := 1
def small_2745921_left_count : Nat := 1
def small_2745921_left_encoded : String := "00000004"
theorem small_2745921_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2745921_left_root small_2745921_left_fuel small_2745921_left_count small_2745921_left_encoded = true := by
  decide +kernel
theorem small_2745921_left_covered : CoveredBy scale carrier boxes small_2745921_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2745921_left_root small_2745921_left_fuel small_2745921_left_count small_2745921_left_encoded small_2745921_left_checked

theorem cover_2745921 : CoveredBy scale carrier boxes root_2745921 := by
  apply coveredBy_split_literal root_2745921 small_2745921_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.root_2745927 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_2745921_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.cover_2745927
#print axioms cover_2745921

def root_2745905 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2745905_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2745905_left_fuel : Nat := 4
def small_2745905_left_count : Nat := 7
def small_2745905_left_encoded : String := "1151E8FF08A913010000000512073CF6000000000000000500000004"
theorem small_2745905_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2745905_left_root small_2745905_left_fuel small_2745905_left_count small_2745905_left_encoded = true := by
  decide +kernel
theorem small_2745905_left_covered : CoveredBy scale carrier boxes small_2745905_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2745905_left_root small_2745905_left_fuel small_2745905_left_count small_2745905_left_encoded small_2745905_left_checked

theorem cover_2745905 : CoveredBy scale carrier boxes root_2745905 := by
  apply coveredBy_split_literal root_2745905 small_2745905_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.root_2745921 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_2745905_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.cover_2745921
#print axioms cover_2745905

def root_2745899 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2745899_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2745899_left_fuel : Nat := 1
def small_2745899_left_count : Nat := 1
def small_2745899_left_encoded : String := "00000003"
theorem small_2745899_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2745899_left_root small_2745899_left_fuel small_2745899_left_count small_2745899_left_encoded = true := by
  decide +kernel
theorem small_2745899_left_covered : CoveredBy scale carrier boxes small_2745899_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2745899_left_root small_2745899_left_fuel small_2745899_left_count small_2745899_left_encoded small_2745899_left_checked

theorem cover_2745899 : CoveredBy scale carrier boxes root_2745899 := by
  apply coveredBy_split_literal root_2745899 small_2745899_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.root_2745905 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_2745899_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.cover_2745905
#print axioms cover_2745899

def root_2745898 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2745898 : CoveredBy scale carrier boxes root_2745898 := by
  apply coveredBy_split_literal root_2745898 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.root_2745899 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1057.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.cover_2745899
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1057.covered
#print axioms cover_2745898

def root_2745892 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2745892_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2745892_left_fuel : Nat := 1
def small_2745892_left_count : Nat := 1
def small_2745892_left_encoded : String := "00000002"
theorem small_2745892_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2745892_left_root small_2745892_left_fuel small_2745892_left_count small_2745892_left_encoded = true := by
  decide +kernel
theorem small_2745892_left_covered : CoveredBy scale carrier boxes small_2745892_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2745892_left_root small_2745892_left_fuel small_2745892_left_count small_2745892_left_encoded small_2745892_left_checked

theorem cover_2745892 : CoveredBy scale carrier boxes root_2745892 := by
  apply coveredBy_split_literal root_2745892 small_2745892_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.root_2745898 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_2745892_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.cover_2745898
#print axioms cover_2745892

def root_2743206 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2743206 : CoveredBy scale carrier boxes root_2743206 := by
  apply coveredBy_split_literal root_2743206 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1053.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.root_2745892 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1053.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.cover_2745892
#print axioms cover_2743206

def root_2743200 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2743200_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2743200_left_fuel : Nat := 1
def small_2743200_left_count : Nat := 1
def small_2743200_left_encoded : String := "00000001"
theorem small_2743200_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2743200_left_root small_2743200_left_fuel small_2743200_left_count small_2743200_left_encoded = true := by
  decide +kernel
theorem small_2743200_left_covered : CoveredBy scale carrier boxes small_2743200_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2743200_left_root small_2743200_left_fuel small_2743200_left_count small_2743200_left_encoded small_2743200_left_checked

theorem cover_2743200 : CoveredBy scale carrier boxes root_2743200 := by
  apply coveredBy_split_literal root_2743200 small_2743200_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.root_2743206 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_2743200_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.cover_2743206
#print axioms cover_2743200

def root_2743199 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2743199 : CoveredBy scale carrier boxes root_2743199 := by
  apply coveredBy_split_literal root_2743199 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.root_2743200 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1058.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.cover_2743200
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1058.covered
#print axioms cover_2743199

def root_2743194 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2743194_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2743194_right_fuel : Nat := 1
def small_2743194_right_count : Nat := 1
def small_2743194_right_encoded : String := "00000000"
theorem small_2743194_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2743194_right_root small_2743194_right_fuel small_2743194_right_count small_2743194_right_encoded = true := by
  decide +kernel
theorem small_2743194_right_covered : CoveredBy scale carrier boxes small_2743194_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2743194_right_root small_2743194_right_fuel small_2743194_right_count small_2743194_right_encoded small_2743194_right_checked

theorem cover_2743194 : CoveredBy scale carrier boxes root_2743194 := by
  apply coveredBy_split_literal root_2743194 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.root_2743199 small_2743194_right_root coord0 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.cover_2743199
  · exact small_2743194_right_covered
#print axioms cover_2743194

def root_2756020 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2756020_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2756020_right_fuel : Nat := 22
def small_2756020_right_count : Nat := 123
def small_2756020_right_encoded : String := "115225070A0001081151E8FF0000000500000004115224FF0000000408A912F912073CF80000000108A91305120700FA000000060000000212073CFA0000000208A9130712070106000000030000000612073D0608A912FF12073D08050000F600000005135D4501000000000CFD9BF9000000050F34D0F80000000500000001000000041207010800000004050000F6135D81010CFD9BF90F350CF8000000010CFD9C05000000060F350CFA000000020CFD9C07000000060F350D06045489FF00000005138671080000000400000006000000030F34D0F8000000060000000100000000135D4501000000000CFD9BF9000000060F34D0F8000000060000000100000003120700F808A91305120700FA000000060000000212073CFA0000000208A9130712070106000000030000000612073D0608A912FF12073D08050000F6135D8101045489F900000005138670F80CFD9C05000000050F350CFA000000020CFD9C07000000050F350D060CFD9BFF000000050F34D1080000000400000006000000030000000100000000135D450100000000045489F900000006138670F80000000600000001000000041207010800000004050000F6135D8101045489F900000006138670F8000000060000000100000000135D45010000000000000006000000030000000100000003"
theorem small_2756020_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2756020_right_root small_2756020_right_fuel small_2756020_right_count small_2756020_right_encoded = true := by
  decide +kernel
theorem small_2756020_right_covered : CoveredBy scale carrier boxes small_2756020_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2756020_right_root small_2756020_right_fuel small_2756020_right_count small_2756020_right_encoded small_2756020_right_checked

theorem cover_2756020 : CoveredBy scale carrier boxes root_2756020 := by
  apply coveredBy_split_literal root_2756020 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1059.root small_2756020_right_root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1059.covered
  · exact small_2756020_right_covered
#print axioms cover_2756020

def root_2756015 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2756015_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2756015_right_fuel : Nat := 1
def small_2756015_right_count : Nat := 1
def small_2756015_right_encoded : String := "00000002"
theorem small_2756015_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2756015_right_root small_2756015_right_fuel small_2756015_right_count small_2756015_right_encoded = true := by
  decide +kernel
theorem small_2756015_right_covered : CoveredBy scale carrier boxes small_2756015_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2756015_right_root small_2756015_right_fuel small_2756015_right_count small_2756015_right_encoded small_2756015_right_checked

theorem cover_2756015 : CoveredBy scale carrier boxes root_2756015 := by
  apply coveredBy_split_literal root_2756015 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.root_2756020 small_2756015_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.cover_2756020
  · exact small_2756015_right_covered
#print axioms cover_2756015

def root_2762164 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2762164_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (15553280)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-6291456), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2762164_right_fuel : Nat := 23
def small_2762164_right_count : Nat := 205
def small_2762164_right_encoded : String := "128A41050000000207800106128A410700000003067ECE7912EA94F800000001022A457F0000000813E1C5080000000408C000F6000000080000000A12EA58F8022A457F13E2010808C000F60000000811FBE90100000000000000080000000413E1C5080000000408C000F611FC2501064000FA12FFAD050640010612FF7107000000030569AC39000000081340D4F80115233F00000008000000050000000112FFAD070569AC390000000A1340D4F80115233F13F89508096000F6000000080000000A000000040000000A00000001000000030000000212FF71050000000206400106000000080000000A0000000011FBE90100000000064000FA12FFAD05064001060000000A0000000A000000020000000A00000001128A7D07067ECE7912EA94F800000001022A457F13E2010808C000F611FC2501064000FA12FFAD0508C001060000000811FC25070793F0B900000005128220F800000006000000010000000300000002000000080000000011FBE901000000000000000A000000040000000A12EA58F8022A457F13E2010808C000F611FC2501064000FA12FFAD0508C0010611FBE907000000030569AC39000000081340D4F8033F67BF0000000813BBF50800000004096000F60000000711AA81010000000006E000FA12C8210508200106000000070000000600000002000000070000000111FC25070569AC390000000600000007000000030000000212FF71050000000208C001060000000811FC25070569AC390000000800000007000000030000000011FBE90100000000064000FA12FFAD0508C0010611FBE907000000030569AC39000000081340D4F8033F67BF000000060000000A00000001000000060000000212FF71050000000208C001060000000A0000000A0000000413E1C5080000000408C000F611FC2501064000FA12FFAD0508C0010611FBE907000000030569AC390000000A1340D4F80115233F13F89508096000F6000000070000000A00000004000000090000000111FC25070569AC390000000900000007000000030000000212FF71050000000208C001060000000A0000000A0000000011FBE90100000000064000FA12FFAD050000000A000000020000000A0000000100000003"
theorem small_2762164_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2762164_right_root small_2762164_right_fuel small_2762164_right_count small_2762164_right_encoded = true := by
  decide +kernel
theorem small_2762164_right_covered : CoveredBy scale carrier boxes small_2762164_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2762164_right_root small_2762164_right_fuel small_2762164_right_count small_2762164_right_encoded small_2762164_right_checked

theorem cover_2762164 : CoveredBy scale carrier boxes root_2762164 := by
  apply coveredBy_split_literal root_2762164 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1061.root small_2762164_right_root coord2 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1061.covered
  · exact small_2762164_right_covered
#print axioms cover_2762164

def root_2762159 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2762159_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(15553280), (16244736)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2762159_right_fuel : Nat := 1
def small_2762159_right_count : Nat := 1
def small_2762159_right_encoded : String := "00000000"
theorem small_2762159_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2762159_right_root small_2762159_right_fuel small_2762159_right_count small_2762159_right_encoded = true := by
  decide +kernel
theorem small_2762159_right_covered : CoveredBy scale carrier boxes small_2762159_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2762159_right_root small_2762159_right_fuel small_2762159_right_count small_2762159_right_encoded small_2762159_right_checked

theorem cover_2762159 : CoveredBy scale carrier boxes root_2762159 := by
  apply coveredBy_split_literal root_2762159 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.root_2762164 small_2762159_right_root coord0 true (15553280)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.cover_2762164
  · exact small_2762159_right_covered
#print axioms cover_2762159

def root_2762158 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2762158_right_root : ZRayBox := fun j => (#[⟨⟨(-6291456), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2762158_right_fuel : Nat := 19
def small_2762158_right_count : Nat := 163
def small_2762158_right_encoded : String := "128A410100000000078000FA128A7D0507800106128A410700000003067ECE7912EA94F800000001022A457F13E20108064000F612FFAD0108C000FA11FC250506400106000000090000000600000002000000080000000012FF71010000000008C000FA00000006000000080000000413E1C50800000004064000F612FFAD010000000A000000000000000A12EA58F8022A457F13E20108064000F612FFAD0108C000FA11FC25050640010600000009000000060000000211FBE905000000020640010612FF7107000000030000000912FFAD070569AC39000000061340D4F80000000600000001000000030000000012FF71010000000008C000FA00000006000000090000000413E1C50800000004064000F612FFAD0108C000FA11FC25050640010612FF7107000000030569AC390000000A1340D4F80115233F00000006000000050000000112FFAD0700000006000000030000000211FBE90500000002064001060000000A0000000A0000000012FF71010000000008C000FA11FC2505064001060000000A00000006000000020000000A00000001128A7D07067ECE7912EA94F800000001022A457F000000060000000A12EA58F8022A457F0000000613E1C50800000004064000F612FFAD0108C000FA0000000611FBE905000000020000000A0000000000000006000000010000000300000002128A41050000000207800106128A410700000003067ECE790000000A12EA58F8022A457F13E20108064000F6000000080000000A000000040000000A00000001128A7D07067ECE790000000A12EA58F8022A457F13E20108064000F612FFAD01064000FA12FFAD0508C001060000000A00000006000000020000000A000000000000000A000000040000000A0000000100000003"
theorem small_2762158_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2762158_right_root small_2762158_right_fuel small_2762158_right_count small_2762158_right_encoded = true := by
  decide +kernel
theorem small_2762158_right_covered : CoveredBy scale carrier boxes small_2762158_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2762158_right_root small_2762158_right_fuel small_2762158_right_count small_2762158_right_encoded small_2762158_right_checked

theorem cover_2762158 : CoveredBy scale carrier boxes root_2762158 := by
  apply coveredBy_split_literal root_2762158 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.root_2762159 small_2762158_right_root coord0 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.cover_2762159
  · exact small_2762158_right_covered
#print axioms cover_2762158

def root_2762152 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2762152_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2762152_left_fuel : Nat := 1
def small_2762152_left_count : Nat := 1
def small_2762152_left_encoded : String := "00000004"
theorem small_2762152_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2762152_left_root small_2762152_left_fuel small_2762152_left_count small_2762152_left_encoded = true := by
  decide +kernel
theorem small_2762152_left_covered : CoveredBy scale carrier boxes small_2762152_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2762152_left_root small_2762152_left_fuel small_2762152_left_count small_2762152_left_encoded small_2762152_left_checked

theorem cover_2762152 : CoveredBy scale carrier boxes root_2762152 := by
  apply coveredBy_split_literal root_2762152 small_2762152_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.root_2762158 coord4 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_2762152_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.cover_2762158
#print axioms cover_2762152

def root_2761928 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2761928_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16379648), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2761928_left_fuel : Nat := 16
def small_2761928_left_count : Nat := 107
def small_2761928_left_encoded : String := "1386AD08078000F6128A7D01078000FA128A7D0507800106128A410700000003067ECE790000000512EA58F8067ECE7F0000000512EA59080000000408C000F611FC2501000000050000000011FBE9010000000008C000FA11FC250500000005000000020000000800000001128A7D07067ECE790000000512EA58F8067ECE7F0000000512EA59080000000400000006000000010000000300000002128A4105000000020780010600000008128A7D07067ECE790000000812EA58F8067ECE7F0000000812EA59080000000408C000F60000000811FBE9010000000000000008000000010000000300000000128A410100000000078000FA128A7D0507800106128A410700000003067ECE790000000812EA58F8067ECE7F0000000812EA5908000000040000000900000001128A7D07067ECE7900000006000000060000000300000002128A4105000000020780010600000008128A7D07067ECE790000000812EA58F8067ECE7F0000000812EA590800000004064000F612FFAD01064000FA00000006000000080000000012FF710100000000064000FA0000000600000008000000010000000300000004"
theorem small_2761928_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2761928_left_root small_2761928_left_fuel small_2761928_left_count small_2761928_left_encoded = true := by
  decide +kernel
theorem small_2761928_left_covered : CoveredBy scale carrier boxes small_2761928_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2761928_left_root small_2761928_left_fuel small_2761928_left_count small_2761928_left_encoded small_2761928_left_checked

theorem cover_2761928 : CoveredBy scale carrier boxes root_2761928 := by
  apply coveredBy_split_literal root_2761928 small_2761928_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.root_2762152 coord4 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_2761928_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.cover_2762152
#print axioms cover_2761928

def root_2761922 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2761922_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-16379648)⟩, ⟨(-7264896), (-3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2761922_left_fuel : Nat := 1
def small_2761922_left_count : Nat := 1
def small_2761922_left_encoded : String := "00000001"
theorem small_2761922_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2761922_left_root small_2761922_left_fuel small_2761922_left_count small_2761922_left_encoded = true := by
  decide +kernel
theorem small_2761922_left_covered : CoveredBy scale carrier boxes small_2761922_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2761922_left_root small_2761922_left_fuel small_2761922_left_count small_2761922_left_encoded small_2761922_left_checked

theorem cover_2761922 : CoveredBy scale carrier boxes root_2761922 := by
  apply coveredBy_split_literal root_2761922 small_2761922_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.root_2761928 coord1 false (-16379648)
  · decide +kernel
  · decide +kernel
  · exact small_2761922_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.cover_2761928
#print axioms cover_2761922

def root_2766738 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2766738_right_root : ZRayBox := fun j => (#[⟨⟨(-6291456), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2766738_right_fuel : Nat := 19
def small_2766738_right_count : Nat := 199
def small_2766738_right_encoded : String := "128A410100000000078000FA128A7D0507800106128A410700000003022A457913E200F800000001022A457F13E20108064000F612FFAD0108C000FA11FC25050640010600000009000000060000000211FBE90500000002064001060000000912FFAD07033F67B90000000613BBF4F80000000600000001000000030000000012FF710100000000000000090000000413E1C50800000004064000F612FFAD0108C000FA11FC25050640010612FF710700000003033F67B913BC30F8000000010115233F00000009000000050000000512FFAD07033F67B90000000600000005000000030000000211FBE90500000002000000050000000012FF7101000000000000000513E1C4F8022A457F13E20108064000F612FFAD0108C000FA0000000911FBE90500000002000000050000000000000009000000040000000500000001128A7D07022A457913E200F800000001022A457F0000000613E1C50800000004064000F612FFAD0108C000FA0000000611FBE9050000000208C0010611FBE9070000000300000005000000060000000012FF7101000000000000000613E1C4F8022A457F0000000600000005000000010000000300000002128A41050000000207800106128A410700000003022A457913E200F800000001022A457F13E20108064000F612FFAD01064000FA12FFAD050640010612FF710700000003033F67B9000000080000000512FFAD07033F67B913BC30F800000001033F67BF000000080000000500000005000000030000000212FF710500000002064001060000000812FFAD070000000A000000030000000012FF710100000000064000FA12FFAD05064001060000000912FFAD070000000A00000003000000020000000A000000040000000500000005128A7D07022A457913E200F800000001022A457F13E20108064000F612FFAD01064000FA12FFAD0508C0010611FBE90700000003033F67B90000000600000005000000060000000212FF71050000000208C001060000000A11FC25070000000A000000030000000012FF710100000000064000FA12FFAD0500000006000000020000000A00000004000000050000000500000003"
theorem small_2766738_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2766738_right_root small_2766738_right_fuel small_2766738_right_count small_2766738_right_encoded = true := by
  decide +kernel
theorem small_2766738_right_covered : CoveredBy scale carrier boxes small_2766738_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2766738_right_root small_2766738_right_fuel small_2766738_right_count small_2766738_right_encoded small_2766738_right_checked

theorem cover_2766738 : CoveredBy scale carrier boxes root_2766738 := by
  apply coveredBy_split_literal root_2766738 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1062.root small_2766738_right_root coord0 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1062.covered
  · exact small_2766738_right_covered
#print axioms cover_2766738

def root_2766732 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2766732_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(-3632448), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2766732_left_fuel : Nat := 1
def small_2766732_left_count : Nat := 1
def small_2766732_left_encoded : String := "00000004"
theorem small_2766732_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2766732_left_root small_2766732_left_fuel small_2766732_left_count small_2766732_left_encoded = true := by
  decide +kernel
theorem small_2766732_left_covered : CoveredBy scale carrier boxes small_2766732_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2766732_left_root small_2766732_left_fuel small_2766732_left_count small_2766732_left_encoded small_2766732_left_checked

theorem cover_2766732 : CoveredBy scale carrier boxes root_2766732 := by
  apply coveredBy_split_literal root_2766732 small_2766732_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.root_2766738 coord4 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_2766732_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.cover_2766738
#print axioms cover_2766732

def root_2766012 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2766012_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (-3632448)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2766012_left_fuel : Nat := 21
def small_2766012_left_count : Nat := 347
def small_2766012_left_encoded : String := "1386AD08078000F6128A7D01078000FA128A7D0507800106128A410700000003022A457913E200F800000001067ECE7F12EA950808C000F600000005000000090000000412EA59080000000408C000F611FC250108C000FA11FC2505064001060000000912FFAD0700000006000000030000000211FBE90500000002064001060000000812FFAD07033F67B90000000813BBF4F80569AC3F000000060000000700000001000000030000000011FBE9010000000008C000FA0000000911FBE90500000002064001060000000812FFAD07033F67B900000006000000090000000313E1C4F8067ECE7F0000000912EA59080000000408C000F611FC250108C000FA11FC25050640010600000009000000070000000211FBE905000000020640010612FF71070000000300000009000000070000000011FBE901000000000000000900000001128A7D07022A457913E200F800000001067ECE7F0000000612EA59080000000408C000F611FC250108C000FA0000000611FBE9050000000200000006000000000000000613E1C4F8067ECE7F0000000612EA59080000000408C000F611FC2501000000070000000011FBE9010000000000000006000000010000000300000002128A41050000000207800106128A410700000003022A45790000000813E1C4F8067ECE7F0000000812EA59080000000408C000F611FC2501064000FA12FFAD050640010612FF710700000003000000080000000700000002000000080000000011FBE90100000000064000FA12FFAD05064001060000000912FFAD0701152339000000080000000700000003000000020000000800000001128A7D07022A457913E200F800000001067ECE7F12EA9508000000080000000412EA59080000000408C000F611FC2501064000FA12FFAD0508C0010611FBE90700000003033F67B90000000800000007000000070000000212FF71050000000208C0010600000008000000070000000011FBE90100000000064000FA12FFAD0508C0010611FBE90700000003033F67B90000000613BBF4F80000000600000001000000060000000212FF71050000000208C001060000000811FC2507033F67B900000006000000070000000313E1C4F8067ECE7F12EA950808C000F60000000711FBE90100000000064000FA12FFAD050000000600000002000000070000000412EA59080000000408C000F60000000711FBE90100000000064000FA12FFAD0508C0010600000007000000060000000200000007000000010000000300000000128A410100000000078000FA128A7D0507800106128A410700000003022A45790000000900000009128A7D07022A457900000006000000060000000300000002128A41050000000207800106128A410700000003022A457913E200F800000001067ECE7F0000000812EA590800000004064000F6000000080000000913E1C4F8067ECE7F0000000812EA590800000004064000F612FFAD0100000009000000000000000900000001128A7D07022A457913E200F800000001067ECE7F12EA9508064000F600000008000000060000000412EA590800000004064000F612FFAD01064000FA0000000612FF71050000000208C0010600000008000000060000000012FF710100000000064000FA0000000612FF71050000000208C001060000000A0000000613E1C4F8067ECE7F12EA9508064000F612FFAD01064000FA000000060000000800000000000000060000000412EA590800000004064000F612FFAD01064000FA12FFAD05000000060000000212FF71050000000208C0010611FBE9070000000301152339000000080000000511FC250700000006000000030000000012FF710100000000064000FA0000000612FF71050000000208C001060000000900000005000000010000000300000004"
theorem small_2766012_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2766012_left_root small_2766012_left_fuel small_2766012_left_count small_2766012_left_encoded = true := by
  decide +kernel
theorem small_2766012_left_covered : CoveredBy scale carrier boxes small_2766012_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2766012_left_root small_2766012_left_fuel small_2766012_left_count small_2766012_left_encoded small_2766012_left_checked

theorem cover_2766012 : CoveredBy scale carrier boxes root_2766012 := by
  apply coveredBy_split_literal root_2766012 small_2766012_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.root_2766732 coord4 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact small_2766012_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.cover_2766732
#print axioms cover_2766012

def root_2766007 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2766007_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16378880), (-15122432)⟩, ⟨(-3632448), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2766007_right_fuel : Nat := 1
def small_2766007_right_count : Nat := 1
def small_2766007_right_encoded : String := "00000001"
theorem small_2766007_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2766007_right_root small_2766007_right_fuel small_2766007_right_count small_2766007_right_encoded = true := by
  decide +kernel
theorem small_2766007_right_covered : CoveredBy scale carrier boxes small_2766007_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2766007_right_root small_2766007_right_fuel small_2766007_right_count small_2766007_right_encoded small_2766007_right_checked

theorem cover_2766007 : CoveredBy scale carrier boxes root_2766007 := by
  apply coveredBy_split_literal root_2766007 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.root_2766012 small_2766007_right_root coord1 false (-16378880)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.cover_2766012
  · exact small_2766007_right_covered
#print axioms cover_2766007

def root_2761921 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2761921 : CoveredBy scale carrier boxes root_2761921 := by
  apply coveredBy_split_literal root_2761921 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.root_2761922 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.root_2766007 coord1 true (-3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.cover_2761922
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.cover_2766007
#print axioms cover_2761921

def root_2761916 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2761916_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2761916_right_fuel : Nat := 1
def small_2761916_right_count : Nat := 1
def small_2761916_right_encoded : String := "00000003"
theorem small_2761916_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2761916_right_root small_2761916_right_fuel small_2761916_right_count small_2761916_right_encoded = true := by
  decide +kernel
theorem small_2761916_right_covered : CoveredBy scale carrier boxes small_2761916_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2761916_right_root small_2761916_right_fuel small_2761916_right_count small_2761916_right_encoded small_2761916_right_checked

theorem cover_2761916 : CoveredBy scale carrier boxes root_2761916 := by
  apply coveredBy_split_literal root_2761916 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.root_2761921 small_2761916_right_root coord3 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.cover_2761921
  · exact small_2761916_right_covered
#print axioms cover_2761916

def root_2760226 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2760226 : CoveredBy scale carrier boxes root_2760226 := by
  apply coveredBy_split_literal root_2760226 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1060.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.root_2761916 coord3 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1060.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.cover_2761916
#print axioms cover_2760226

def root_2760221 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2760221_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2760221_right_fuel : Nat := 1
def small_2760221_right_count : Nat := 1
def small_2760221_right_encoded : String := "00000002"
theorem small_2760221_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2760221_right_root small_2760221_right_fuel small_2760221_right_count small_2760221_right_encoded = true := by
  decide +kernel
theorem small_2760221_right_covered : CoveredBy scale carrier boxes small_2760221_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2760221_right_root small_2760221_right_fuel small_2760221_right_count small_2760221_right_encoded small_2760221_right_checked

theorem cover_2760221 : CoveredBy scale carrier boxes root_2760221 := by
  apply coveredBy_split_literal root_2760221 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.root_2760226 small_2760221_right_root coord2 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.cover_2760226
  · exact small_2760221_right_covered
#print axioms cover_2760221

def root_2760220 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2760220_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2760220_right_fuel : Nat := 24
def small_2760220_right_count : Nat := 219
def small_2760220_right_encoded : String := "135D45050000000205000106135D450700000003045489F900000008138670F8045489FF000000081386710800000004078000F6128A7D01028000FA13D7ED05028001060000000613D7ED07022A4579000000080000000500000003000000020000000600000000128A4101000000000000000500000001135D8107045489F91386ACF800000001045489FF000000081386710800000004078000F6128A7D01028000FA13D7ED0507800106128A410700000003067ECE790000000812EA58F80000000800000001128A7D07067ECE790000000A12EA58F8022A457F13E2010808C000F6000000080000000A000000040000000A0000000100000003000000020000000800000000128A4101000000000000000A138670F8045489FF1386AD08078000F6128A7D01028000FA13D7ED0507800106128A41070000000300000008128A7D07022A45790000000813E1C4F8067ECE7F0000000812EA59080000000408C000F60000000711FBE9010000000003C000FA00000007000000070000000100000003000000020000000800000000128A410100000000028000FA13D7ED0507800106128A41070000000300000008128A7D07022A45790000000813E1C4F8067ECE7F0000000812EA590800000004064000F612FFAD0103C000FA13A54D0508C0010611FBE907000000030000000511FC2507000000070000000300000002000000080000000012FF7101000000000000000500000001000000030000000200000008000000041386710800000004078000F6128A7D01028000FA13D7ED0507800106128A410700000003022A457913E200F800000001022A457F000000080000000500000005128A7D07022A457913E200F800000001022A457F13E2010808C000F611FC250103C000FA13A54D0508C00106000000070000000700000002000000080000000011FBE9010000000003C000FA13A54D0508C001060000000A11FC25070000000A000000030000000200000008000000040000000500000005000000030000000213D7B1050000000207800106128A410700000003022A45790000000800000005128A7D07022A45790000000A000000050000000300000000128A410100000000028000FA13D7ED0507800106128A41070000000300000005128A7D07022A45790000000A00000005000000030000000213D7B10500000002000000050000000100000003"
theorem small_2760220_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2760220_right_root small_2760220_right_fuel small_2760220_right_count small_2760220_right_encoded = true := by
  decide +kernel
theorem small_2760220_right_covered : CoveredBy scale carrier boxes small_2760220_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2760220_right_root small_2760220_right_fuel small_2760220_right_count small_2760220_right_encoded small_2760220_right_checked

theorem cover_2760220 : CoveredBy scale carrier boxes root_2760220 := by
  apply coveredBy_split_literal root_2760220 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.root_2760221 small_2760220_right_root coord2 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.cover_2760221
  · exact small_2760220_right_covered
#print axioms cover_2760220

def root_2760215 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2760215_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(16244736), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2760215_right_fuel : Nat := 1
def small_2760215_right_count : Nat := 1
def small_2760215_right_encoded : String := "00000000"
theorem small_2760215_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2760215_right_root small_2760215_right_fuel small_2760215_right_count small_2760215_right_encoded = true := by
  decide +kernel
theorem small_2760215_right_covered : CoveredBy scale carrier boxes small_2760215_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2760215_right_root small_2760215_right_fuel small_2760215_right_count small_2760215_right_encoded small_2760215_right_checked

theorem cover_2760215 : CoveredBy scale carrier boxes root_2760215 := by
  apply coveredBy_split_literal root_2760215 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.root_2760220 small_2760215_right_root coord0 true (16244736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.cover_2760220
  · exact small_2760215_right_covered
#print axioms cover_2760215

def root_2760214 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2760214_right_root : ZRayBox := fun j => (#[⟨⟨(-4194304), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2760214_right_fuel : Nat := 20
def small_2760214_right_count : Nat := 273
def small_2760214_right_encoded : String := "135D450100000000050000FA135D810505000106135D450700000003045489F91386ACF800000001045489FF000000091386710800000004028000F613D7ED01078000FA128A7D05028001060000000713D7ED07067ECE7900000007000000090000000300000002128A4105000000020000000A0000000013D7B1010000000000000009138670F8045489FF000000091386710800000004028000F613D7ED01078000FA128A7D050000000900000002128A41050000000200000005000000000000000900000001135D8107045489F91386ACF800000001045489FF1386AD08028000F613D7ED01078000FA128A7D0507800106000000090000000600000002128A41050000000207800106128A41070000000300000008128A7D07067ECE790000000812EA58F8067ECE7F000000060000000A00000001000000030000000013D7B10100000000078000FA00000009128A41050000000207800106000000090000000A000000041386710800000004028000F613D7ED01078000FA128A7D0507800106128A410700000003067ECE790000000A12EA58F8022A457F000000090000000A00000001128A7D07067ECE790000000612EA58F800000006000000010000000300000002128A4105000000020000000A0000000013D7B10100000000078000FA128A7D05078001060000000A0000000A000000020000000A138670F8045489FF1386AD08028000F613D7ED01078000FA128A7D0507800106000000090000000600000002128A4105000000020780010600000009128A7D07022A457913E200F800000001067ECE7F0000000612EA5908000000040000000613E1C4F8067ECE7F0000000612EA5908000000040000000600000001000000030000000013D7B1010000000000000009000000041386710800000004028000F613D7ED01078000FA128A7D0507800106128A410700000003022A457913E200F800000001022A457F000000090000000500000005128A7D07022A457900000006000000050000000300000002128A41050000000207800106128A41070000000300000005128A7D07022A45790000000A00000005000000030000000013D7B10100000000078000FA128A7D050780010600000009128A7D07000000060000000300000002128A41050000000200000005000000010000000300000002135D45050000000205000106135D450700000003045489F90000000A138670F8045489FF000000080000000500000001135D8107045489F91386ACF800000001045489FF1386AD08028000F6000000080000000A000000040000000A138670F8045489FF1386AD08028000F613D7ED01028000FA13D7ED0507800106128A41070000000300000008128A7D07022A45790000000A13E1C4F8067ECE7F0000000900000005000000010000000300000002000000080000000013D7B10100000000028000FA13D7ED0507800106000000090000000A000000020000000A00000004000000050000000100000003"
theorem small_2760214_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2760214_right_root small_2760214_right_fuel small_2760214_right_count small_2760214_right_encoded = true := by
  decide +kernel
theorem small_2760214_right_covered : CoveredBy scale carrier boxes small_2760214_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2760214_right_root small_2760214_right_fuel small_2760214_right_count small_2760214_right_encoded small_2760214_right_checked

theorem cover_2760214 : CoveredBy scale carrier boxes root_2760214 := by
  apply coveredBy_split_literal root_2760214 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.root_2760215 small_2760214_right_root coord0 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.cover_2760215
  · exact small_2760214_right_covered
#print axioms cover_2760214

def root_2760208 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2760208_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2760208_left_fuel : Nat := 1
def small_2760208_left_count : Nat := 1
def small_2760208_left_encoded : String := "00000004"
theorem small_2760208_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2760208_left_root small_2760208_left_fuel small_2760208_left_count small_2760208_left_encoded = true := by
  decide +kernel
theorem small_2760208_left_covered : CoveredBy scale carrier boxes small_2760208_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2760208_left_root small_2760208_left_fuel small_2760208_left_count small_2760208_left_encoded small_2760208_left_checked

theorem cover_2760208 : CoveredBy scale carrier boxes root_2760208 := by
  apply coveredBy_split_literal root_2760208 small_2760208_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.root_2760214 coord4 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_2760208_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.cover_2760214
#print axioms cover_2760208

def root_2760042 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2760042_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2760042_left_fuel : Nat := 18
def small_2760042_left_count : Nat := 77
def small_2760042_left_encoded : String := "12073D08050000F6135D8101050000FA135D810505000106135D45070000000300000008135D8107045489F91386ACF8000000010CFD9BFF000000050F34D10800000004078000F600000005128A41010000000000000008138670F80CFD9BFF000000050F34D10800000004078000F6128A7D01078000FA128A7D0507800106128A41070000000300000008128A7D070000000500000003000000020000000800000000128A410100000000078000FA00000009000000080000000100000003000000020000000800000000135D450100000000050000FA135D81050500010600000009135D8107045489F91386ACF8000000010CFD9BFF000000050F34D1080000000400000009138670F80CFD9BFF000000090F34D10800000004000000090000000100000003000000020000000800000004"
theorem small_2760042_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2760042_left_root small_2760042_left_fuel small_2760042_left_count small_2760042_left_encoded = true := by
  decide +kernel
theorem small_2760042_left_covered : CoveredBy scale carrier boxes small_2760042_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2760042_left_root small_2760042_left_fuel small_2760042_left_count small_2760042_left_encoded small_2760042_left_checked

theorem cover_2760042 : CoveredBy scale carrier boxes root_2760042 := by
  apply coveredBy_split_literal root_2760042 small_2760042_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.root_2760208 coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_2760042_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.cover_2760208
#print axioms cover_2760042

def root_2760037 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2760037_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2760037_right_fuel : Nat := 1
def small_2760037_right_count : Nat := 1
def small_2760037_right_encoded : String := "00000001"
theorem small_2760037_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2760037_right_root small_2760037_right_fuel small_2760037_right_count small_2760037_right_encoded = true := by
  decide +kernel
theorem small_2760037_right_covered : CoveredBy scale carrier boxes small_2760037_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2760037_right_root small_2760037_right_fuel small_2760037_right_count small_2760037_right_encoded small_2760037_right_checked

theorem cover_2760037 : CoveredBy scale carrier boxes root_2760037 := by
  apply coveredBy_split_literal root_2760037 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.root_2760042 small_2760037_right_root coord1 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.cover_2760042
  · exact small_2760037_right_covered
#print axioms cover_2760037

def root_2759275 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2759275_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2759275_left_fuel : Nat := 28
def small_2759275_left_count : Nat := 357
def small_2759275_left_encoded : String := "12073CF80000000108A912FF12073D08050000F6135D8101050000FA135D81050500010600000005135D81070CFD9BF9000000050F34D0F8000000050000000100000003000000020000000800000000135D450100000000050000FA135D81050500010600000008135D81070CFD9BF9000000080F34D0F80000000800000001000000030000000200000008000000041207010800000004050000F6135D8101050000FA135D810505000106135D4507000000030CFD9BF90F350CF800000001045489FF0000000513867108000000040C9A86F800000008000000080F34D0F8045489FF000000081386710800000004078000F6128A7D01078000FA128A7D05028001060000000813D7ED070AD357790000000510D100F8000000080000000100000003000000020000000800000000128A410100000000078000FA128A7D05028001060000000713D7ED070AD357790000000710D100F80000000A0000000100000003000000020000000800000001135D81070CFD9BF90F350CF800000001045489FF1386AD080C9A86F8000000050F8750F900000005000000010000000413867108000000040C9A86F80F878CF900000001078000F6128A7D01078000FA128A7D0500000005000000020000000800000000128A4101000000000000000A0F8750F9078000F6128A7D01078000FA0000000500000008000000000000000A000000010F34D0F8045489FF1386AD08078000F6128A7D01078000FA000000050000000800000000128A410100000000078000FA128A7D050780010600000005128A7D0700000005000000030000000200000008000000041386710800000004078000F6128A7D01078000FA128A7D0507800106128A4107000000030AD357790000000510D100F8022A457F0000000513E1C5080000000408C000F611FC250108C000FA11FC25050000000500000002000000080000000011FBE901000000000000000A00000001128A7D070AD357790000000510D100F8022A457F0000000513E1C5080000000408C000F611FC250108C000FA000000050000000A000000000000000A000000010000000300000002128A41050000000207800106128A4107000000030AD357790000000810D100F80000000800000001128A7D070AD357790000000A10D100F80000000A000000010000000300000000128A410100000000078000FA128A7D0507800106128A4107000000030AD357790000000A10D100F80000000A00000001128A7D070AD357790000000A10D100F80000000A000000010000000300000002128A4105000000020000000A000000010000000300000002135D45050000000205000106135D45070000000300000008135D81070CFD9BF90F350CF800000001045489FF000000080000000A0F34D0F8045489FF000000081386710800000004078000F6128A7D0100000008000000000000000A000000010000000300000000135D450100000000050000FA135D810505000106135D4507000000030CFD9BF90F350CF800000001045489FF00000008000000070F34D0F8045489FF000000080000000A00000001135D81070CFD9BF90F350CF800000001045489FF1386AD080C9A86F80F878CF900000001028000F6000000080000000A0F8750F90000000800000001000000040000000A0F34D0F8045489FF1386AD08028000F613D7ED01078000FA128A7D0507800106128A41070000000300000008128A7D07000000060000000300000002000000080000000013D7B10100000000078000FA128A7D0500000009000000020000000A000000041386710800000004028000F613D7ED01078000FA128A7D050000000A000000020000000A000000000000000A000000010000000300000002135D45050000000205000106135D4507000000030CFD9BF9000000080F34D0F80000000800000001135D81070CFD9BF90000000A0F34D0F80000000A0000000100000003"
theorem small_2759275_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2759275_left_root small_2759275_left_fuel small_2759275_left_count small_2759275_left_encoded = true := by
  decide +kernel
theorem small_2759275_left_covered : CoveredBy scale carrier boxes small_2759275_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2759275_left_root small_2759275_left_fuel small_2759275_left_count small_2759275_left_encoded small_2759275_left_checked

theorem cover_2759275 : CoveredBy scale carrier boxes root_2759275 := by
  apply coveredBy_split_literal root_2759275 small_2759275_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.root_2760037 coord1 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_2759275_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.cover_2760037
#print axioms cover_2759275

def root_2759269 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2759269_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2759269_left_fuel : Nat := 1
def small_2759269_left_count : Nat := 1
def small_2759269_left_encoded : String := "00000004"
theorem small_2759269_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2759269_left_root small_2759269_left_fuel small_2759269_left_count small_2759269_left_encoded = true := by
  decide +kernel
theorem small_2759269_left_covered : CoveredBy scale carrier boxes small_2759269_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2759269_left_root small_2759269_left_fuel small_2759269_left_count small_2759269_left_encoded small_2759269_left_checked

theorem cover_2759269 : CoveredBy scale carrier boxes root_2759269 := by
  apply coveredBy_split_literal root_2759269 small_2759269_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.root_2759275 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_2759269_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.cover_2759275
#print axioms cover_2759269

def root_2759261 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2759261_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2759261_left_fuel : Nat := 2
def small_2759261_left_count : Nat := 3
def small_2759261_left_encoded : String := "1151E8FF0000000800000004"
theorem small_2759261_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2759261_left_root small_2759261_left_fuel small_2759261_left_count small_2759261_left_encoded = true := by
  decide +kernel
theorem small_2759261_left_covered : CoveredBy scale carrier boxes small_2759261_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2759261_left_root small_2759261_left_fuel small_2759261_left_count small_2759261_left_encoded small_2759261_left_checked

theorem cover_2759261 : CoveredBy scale carrier boxes root_2759261 := by
  apply coveredBy_split_literal root_2759261 small_2759261_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.root_2759269 coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_2759261_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.cover_2759269
#print axioms cover_2759261

def root_2759255 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2759255_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2759255_left_fuel : Nat := 1
def small_2759255_left_count : Nat := 1
def small_2759255_left_encoded : String := "00000003"
theorem small_2759255_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2759255_left_root small_2759255_left_fuel small_2759255_left_count small_2759255_left_encoded = true := by
  decide +kernel
theorem small_2759255_left_covered : CoveredBy scale carrier boxes small_2759255_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2759255_left_root small_2759255_left_fuel small_2759255_left_count small_2759255_left_encoded small_2759255_left_checked

theorem cover_2759255 : CoveredBy scale carrier boxes root_2759255 := by
  apply coveredBy_split_literal root_2759255 small_2759255_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.root_2759261 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_2759255_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.cover_2759261
#print axioms cover_2759255

def root_2759254 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2759254 : CoveredBy scale carrier boxes root_2759254 := by
  apply coveredBy_split_literal root_2759254 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.root_2759255 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1063.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.cover_2759255
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk1063.covered
#print axioms cover_2759254

def root_2759248 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2759248_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2759248_left_fuel : Nat := 1
def small_2759248_left_count : Nat := 1
def small_2759248_left_encoded : String := "00000002"
theorem small_2759248_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2759248_left_root small_2759248_left_fuel small_2759248_left_count small_2759248_left_encoded = true := by
  decide +kernel
theorem small_2759248_left_covered : CoveredBy scale carrier boxes small_2759248_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2759248_left_root small_2759248_left_fuel small_2759248_left_count small_2759248_left_encoded small_2759248_left_checked

theorem cover_2759248 : CoveredBy scale carrier boxes root_2759248 := by
  apply coveredBy_split_literal root_2759248 small_2759248_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.root_2759254 coord2 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_2759248_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.cover_2759254
#print axioms cover_2759248

def root_2756014 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2756014 : CoveredBy scale carrier boxes root_2756014 := by
  apply coveredBy_split_literal root_2756014 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.root_2756015 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.root_2759248 coord2 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.cover_2756015
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.cover_2759248
#print axioms cover_2756014

def root_2756008 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2756008_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2756008_left_fuel : Nat := 1
def small_2756008_left_count : Nat := 1
def small_2756008_left_encoded : String := "00000001"
theorem small_2756008_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2756008_left_root small_2756008_left_fuel small_2756008_left_count small_2756008_left_encoded = true := by
  decide +kernel
theorem small_2756008_left_covered : CoveredBy scale carrier boxes small_2756008_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2756008_left_root small_2756008_left_fuel small_2756008_left_count small_2756008_left_encoded small_2756008_left_checked

theorem cover_2756008 : CoveredBy scale carrier boxes root_2756008 := by
  apply coveredBy_split_literal root_2756008 small_2756008_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.root_2756014 coord1 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_2756008_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065.cover_2756014
#print axioms cover_2756008

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0065
