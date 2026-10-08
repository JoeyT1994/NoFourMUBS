import TaoBundleAssembly0051
import TaoBundleChunkBatch0207
import TaoBundleChunkBatch0208
import TaoBundleChunkBatch0209
import TaoBundleChunkBatch0210
import TaoBundleChunkBatch0211
import TaoBundleChunkBatch0212
import TaoBundleChunkBatch0213
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052
def root_2143142 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2143142_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2143142_right_fuel : Nat := 27
def small_2143142_right_count : Nat := 351
def small_2143142_right_encoded : String := "12073CFC00000003050000F6135D80F70000000005000104135D44FB050000FE135D80FF0000000404548A0313867102000000010CFD9C070F34D0FC078000F6128A7CF700000000028001040000000A13D7ECFB00000002078000FE128A7CFF00000004022A458313E1C502000000010AD3578710D100FC0000000A0000000300000005000000050000000A128A40F7028001040000000A13D7ECFB00000002078000FE128A7CFF00000004022A4583000000070000000A0000000700000000000000030F350CFC000000030C9A86FC0000000A0000000A1386AD020CFD9C070F34D0FC0000000A0000000300000005000000010000000A00000002135D80FB00000002050000FE135D80FF0000000404548A0313867102000000010CFD9C070F34D0FC078000F6128A7CF70000000007800104128A40FB078000FE128A7CFF00000004022A458313E1C502000000010AD3578710D100FC08C000F611FC24F7000000000640010412FF70FB0000000A0000000212FFACFB0000000208C000FE000000050000000711FBE8F70000000700000000000000030000000500000005128A40FF022A4583000000070000000A0000000400000002128A7CFB00000002078000FE128A7CFF00000004022A458313E1C502000000010AD3578710D100FC08C000F611FC24F70000000008C001040000000511FC24FB000000020000000500000007000000030000000500000005128A40FF022A45830000000713E201020AD3578710D100FC0000000700000003000000050000000100000004128A40F707800104128A40FB078000FE128A7CFF00000004022A45830000000713E201020AD3578710D100FC000000070000000300000005000000010000000700000002128A7CFB00000002078000FE128A7CFF00000004022A45830000000713E201020AD3578710D100FC000000060000000300000005000000010000000700000000000000030F350CFC000000030C9A86FC0F878D07078000F6128A7CF70000000007800104128A40FB0000000A00000002128A7CFB00000002078000FE0000000500000007128A40F70000000700000000000000030F87510700000003078000F6128A7CF7000000000780010400000005128A7CFB00000002078000FE0000000500000007000000071386AD020CFD9C070F34D0FC078000F6128A7CF7000000000780010400000005128A7CFB0000000200000005128A40F707800104128A40FB0000000A00000002128A7CFB00000002078000FE128A7CFF00000004000000050000000A00000000000000030F350CFC000000030C9A86FC000000050F875107000000030000000500000001135D44FF04548A0313867102000000010CFD9C070F34D0FC078000F6128A7CF700000000000000070000000700000003000000071386AD020000000A0000000100000004135D44F705000104135D44FB050000FE135D80FF0000000404548A0313867102000000010CFD9C070F34D0FC0000000700000003000000071386AD020CFD9C07000000080000000A00000001135D44FF04548A03000000070000000A0000000400000002135D80FB00000002050000FE135D80FF0000000404548A0313867102000000010CFD9C070F34D0FC028000F613D7ECF7000000000780010400000007000000070000000700000003000000071386AD020CFD9C070F34D0FC028000F613D7ECF70000000007800104128A40FB0000000A00000002128A7CFB00000002078000FE128A7CFF00000004000000060000000713D7B0F707800104000000070000000700000000000000030F350CFC000000030C9A86FC0F878D07028000F60000000A00000007000000030F875107000000030000000700000001135D44FF04548A03000000071386AD020CFD9C070F34D0FC000000070000000300000007000000010000000400000000"
theorem small_2143142_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2143142_right_root small_2143142_right_fuel small_2143142_right_count small_2143142_right_encoded = true := by
  decide +kernel
theorem small_2143142_right_covered : CoveredBy scale carrier boxes small_2143142_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2143142_right_root small_2143142_right_fuel small_2143142_right_count small_2143142_right_encoded small_2143142_right_checked

theorem cover_2143142 : CoveredBy scale carrier boxes root_2143142 := by
  apply coveredBy_split_literal root_2143142 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.root_2143143 small_2143142_right_root coord3 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.cover_2143143
  · exact small_2143142_right_covered
#print axioms cover_2143142

def root_2143136 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2143136_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2143136_left_fuel : Nat := 1
def small_2143136_left_count : Nat := 1
def small_2143136_left_encoded : String := "00000001"
theorem small_2143136_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2143136_left_root small_2143136_left_fuel small_2143136_left_count small_2143136_left_encoded = true := by
  decide +kernel
theorem small_2143136_left_covered : CoveredBy scale carrier boxes small_2143136_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2143136_left_root small_2143136_left_fuel small_2143136_left_count small_2143136_left_encoded small_2143136_left_checked

theorem cover_2143136 : CoveredBy scale carrier boxes root_2143136 := by
  apply coveredBy_split_literal root_2143136 small_2143136_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.root_2143142 coord1 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_2143136_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.cover_2143142
#print axioms cover_2143136

def root_2143135 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2143135_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2143135_right_fuel : Nat := 20
def small_2143135_right_count : Nat := 121
def small_2143135_right_encoded : String := "12073D0208A91307120700FC050000F6135D80F70000000005000104135D44FB0000000A00000002135D80FB00000002050000FE135D80FF000000040CFD9C030F34D1020000000104548A07138670FC078000F6128A7CF70000000007800104128A40FB0000000A00000002128A7CFB00000002078000FE128A7CFF00000004000000050000000A128A40F70780010400000008128A7CFB00000002078000FE000000060000000A00000000000000031386ACFC00000003078000F600000005128A40F70000000A000000000F350D0200000005000000010000000A135D44F705000104135D44FB050000FE000000080000000800000002135D80FB00000002050000FE135D80FF000000040CFD9C030F34D1020000000104548A07000000081386ACFC0000000300000008000000080000000A000000000000000312073CFC00000003050000F6135D80F700000000050001040000000A135D80FB00000002050000FE135D80FF000000040CFD9C030F34D102000000010CFD9C070F34D0FC000000050000000300000005000000050000000A135D44F7050001040000000A135D80FB00000002050000FE135D80FF000000040CFD9C030F34D102000000010CFD9C070F34D0FC0000000A000000030000000A0000000A0000000A0000000000000001"
theorem small_2143135_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2143135_right_root small_2143135_right_fuel small_2143135_right_count small_2143135_right_encoded = true := by
  decide +kernel
theorem small_2143135_right_covered : CoveredBy scale carrier boxes small_2143135_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2143135_right_root small_2143135_right_fuel small_2143135_right_count small_2143135_right_encoded small_2143135_right_checked

theorem cover_2143135 : CoveredBy scale carrier boxes root_2143135 := by
  apply coveredBy_split_literal root_2143135 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.root_2143136 small_2143135_right_root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.cover_2143136
  · exact small_2143135_right_covered
#print axioms cover_2143135

def root_2143130 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2143130_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2143130_right_fuel : Nat := 1
def small_2143130_right_count : Nat := 1
def small_2143130_right_encoded : String := "00000004"
theorem small_2143130_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2143130_right_root small_2143130_right_fuel small_2143130_right_count small_2143130_right_encoded = true := by
  decide +kernel
theorem small_2143130_right_covered : CoveredBy scale carrier boxes small_2143130_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2143130_right_root small_2143130_right_fuel small_2143130_right_count small_2143130_right_encoded small_2143130_right_checked

theorem cover_2143130 : CoveredBy scale carrier boxes root_2143130 := by
  apply coveredBy_split_literal root_2143130 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.root_2143135 small_2143130_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.cover_2143135
  · exact small_2143130_right_covered
#print axioms cover_2143130

def root_2140326 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2140326 : CoveredBy scale carrier boxes root_2140326 := by
  apply coveredBy_split_literal root_2140326 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0827.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.root_2143130 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0827.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.cover_2143130
#print axioms cover_2140326

def root_2140321 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2140321_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2140321_right_fuel : Nat := 1
def small_2140321_right_count : Nat := 1
def small_2140321_right_encoded : String := "00000003"
theorem small_2140321_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2140321_right_root small_2140321_right_fuel small_2140321_right_count small_2140321_right_encoded = true := by
  decide +kernel
theorem small_2140321_right_covered : CoveredBy scale carrier boxes small_2140321_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2140321_right_root small_2140321_right_fuel small_2140321_right_count small_2140321_right_encoded small_2140321_right_checked

theorem cover_2140321 : CoveredBy scale carrier boxes root_2140321 := by
  apply coveredBy_split_literal root_2140321 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.root_2140326 small_2140321_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.cover_2140326
  · exact small_2140321_right_covered
#print axioms cover_2140321

def root_2140320 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2140320_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2140320_right_fuel : Nat := 22
def small_2140320_right_count : Nat := 193
def small_2140320_right_encoded : String := "1151E907000000030A0000FE115224FF0000000408A91303120701020000000108A912FF12073CFE00000004050000F6135D80F70000000005000104135D44FB050000FC00000005135D4507000000030000000500000002135D80FB00000002050000FC135D810704548A0313867102000000010CFD9BFF0F350CFE000000040C9A86FE000000050F8750FF078000F6000000050000000900000004000000050000000500000003135D45070000000304548A0313867102000000010CFD9BFF000000090000000500000005135D44F70500010400000009135D80FB00000002050000FC135D810704548A03000000091386AD020CFD9BFF00000009000000050000000100000003135D45070000000304548A03000000091386AD020CFD9BFF00000009000000050000000100000000120700FE000000050000000412073D0208A912FF12073CFE00000004050000F600000005135D44F70500010400000005135D80FB00000002000000050000000000000005000000011151E8FF08A913031207010200000001050000F6135D80F70000000005000104135D44FB050000FC0000000A0000000A00000002135D80FB00000002050000FC135D8107050000FE135D80FF0000000404548A031386710200000001078000F6128A7CF700000000078001040000000A128A7CFB00000002078000FC00000007128A4107000000030000000A128A40F7078001040000000700000007000000000000000A0000000A00000003135D450700000003050000FE135D80FF0000000404548A031386710200000001078000F6128A7CF7000000000000000A000000090000000A0000000A135D44F705000104135D44FB050000FC000000070000000800000002135D80FB00000002050000FC135D8107050000FE135D80FF0000000404548A03000000071386AD02028000F60000000A00000007000000010000000700000003135D450700000003050000FE135D80FF0000000404548A030000000700000008000000070000000012073D02050000F60000000A135D44F70000000A000000000000000100000004"
theorem small_2140320_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2140320_right_root small_2140320_right_fuel small_2140320_right_count small_2140320_right_encoded = true := by
  decide +kernel
theorem small_2140320_right_covered : CoveredBy scale carrier boxes small_2140320_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2140320_right_root small_2140320_right_fuel small_2140320_right_count small_2140320_right_encoded small_2140320_right_checked

theorem cover_2140320 : CoveredBy scale carrier boxes root_2140320 := by
  apply coveredBy_split_literal root_2140320 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.root_2140321 small_2140320_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.cover_2140321
  · exact small_2140320_right_covered
#print axioms cover_2140320

def root_2140315 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2140315_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2140315_right_fuel : Nat := 1
def small_2140315_right_count : Nat := 1
def small_2140315_right_encoded : String := "00000002"
theorem small_2140315_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2140315_right_root small_2140315_right_fuel small_2140315_right_count small_2140315_right_encoded = true := by
  decide +kernel
theorem small_2140315_right_covered : CoveredBy scale carrier boxes small_2140315_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2140315_right_root small_2140315_right_fuel small_2140315_right_count small_2140315_right_encoded small_2140315_right_checked

theorem cover_2140315 : CoveredBy scale carrier boxes root_2140315 := by
  apply coveredBy_split_literal root_2140315 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.root_2140320 small_2140315_right_root coord2 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.cover_2140320
  · exact small_2140315_right_covered
#print axioms cover_2140315

def root_2155234 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2155234_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2155234_left_fuel : Nat := 18
def small_2155234_left_count : Nat := 113
def small_2155234_left_encoded : String := "115224FF0000000408A91303120701020000000108A912FB12073D0408A91307120700FC08A912FF12073CFE00000004050000F6135D80F70000000004548A0313867102000000010000000600000006135D44F70000000600000000000000060000000312073CFC0000000308A912FF12073CFE00000004050000F6135D80F70000000004548A0313867102000000010CFD9BFB0F350D040CFD9C070F34D0FC00000006000000030000000600000002000000061386AD020CFD9BFB0F350D040CFD9C070F34D0FC000000050000000300000005000000020000000600000001135D44F704548A031386710200000001000000060000000600000000000000060000000212070104000000020000000612073D0208A912FB12073D0408A91307120700FC08A912FF12073CFE00000004050000F6135D80F7000000000CFD9C030F34D102000000010000000600000005135D44F70CFD9C030F34D10200000001000000060000000600000000000000050000000312073CFC0000000308A912FF12073CFE00000004050000F600000005135D44F70CFD9C030F34D10200000001000000060000000500000000000000050000000212070104000000020000000600000001"
theorem small_2155234_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2155234_left_root small_2155234_left_fuel small_2155234_left_count small_2155234_left_encoded = true := by
  decide +kernel
theorem small_2155234_left_covered : CoveredBy scale carrier boxes small_2155234_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2155234_left_root small_2155234_left_fuel small_2155234_left_count small_2155234_left_encoded small_2155234_left_checked

theorem cover_2155234 : CoveredBy scale carrier boxes root_2155234 := by
  apply coveredBy_split_literal root_2155234 small_2155234_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0831.root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact small_2155234_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0831.covered
#print axioms cover_2155234

def root_2155229 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2155229_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2155229_right_fuel : Nat := 1
def small_2155229_right_count : Nat := 1
def small_2155229_right_encoded : String := "00000003"
theorem small_2155229_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2155229_right_root small_2155229_right_fuel small_2155229_right_count small_2155229_right_encoded = true := by
  decide +kernel
theorem small_2155229_right_covered : CoveredBy scale carrier boxes small_2155229_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2155229_right_root small_2155229_right_fuel small_2155229_right_count small_2155229_right_encoded small_2155229_right_checked

theorem cover_2155229 : CoveredBy scale carrier boxes root_2155229 := by
  apply coveredBy_split_literal root_2155229 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.root_2155234 small_2155229_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.cover_2155234
  · exact small_2155229_right_covered
#print axioms cover_2155229

def root_2158476 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2158476_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2158476_left_fuel : Nat := 29
def small_2158476_left_count : Nat := 245
def small_2158476_left_encoded : String := "115224FF0000000408A91303120701020000000108A912FB12073D0408A912FF12073CFE00000004050000F6135D80F700000000050000FC135D810704548A0313867102000000010CFD9BFB0F350D040CFD9BFF0F350CFE000000040C9A87040F8750FB0C9A86FE000000050F8750FF078000F600000005128A40F7078000FC00000005128A41070000000300000005000000000000000400000002000000060000000500000002000000061386AD020CFD9BFB0F350D040000000500000002000000050000000100000003135D45070000000304548A0313867102000000010CFD9BFB0F350D040CFD9BFF0F350CFE000000040C9A87040F8750FB0C9A86FE0F878CFF00000004000000050F8750FF078000F6128A7CF700000000000000050000000900000004000000020F878CFB000000020C9A86FE000000060F8750FF078000F6128A7CF700000000028000FC0000000513D7B10700000003022A458313E1C502000000010DE7CA04000000050000000600000005128A40F7028000FC0000000613D7B10700000003022A458313E1C50200000001000000060000000600000000000000040F34D0FE0000000500000004000000020F34D10400000002000000061386AD020CFD9BFB0F350D040CFD9BFF0F350CFE000000040C9A8704000000050F878CFB000000020000000500000005000000020F34D104000000020000000600000001135D44F7050000FC135D810704548A031386710200000001000000060000000600000003135D45070000000304548A0313867102000000010CFD9BFB0F350D040CFD9BFF0F350CFE000000040C9A8704000000090F878CFB00000002000000060F34D0FE0000000600000004000000020F34D10400000002000000061386AD020CFD9BFB0F350D040CFD9BFF0F350CFE000000040C9A87040F8750FB0C9A86FE000000060000000800000002000000060F34D0FE0000000500000004000000020F34D10400000002000000060000000100000000120700FE00000006000000040000000212070104000000020000000612073D0208A912FB12073D0408A912FF12073CFE00000004050000F6135D80F700000000050000FC00000005135D45070000000300000005135D44F7050000FC135D81070CFD9C030F34D10200000001000000060000000500000003135D4507000000030CFD9C030F34D102000000010CFD9BFB0F350D040CFD9BFF0F350CFE000000040C9A8704000000050F878CFB000000020000000600000005000000020F34D10400000002000000060F350D02000000050000000100000000120700FE00000005000000040000000212070104000000020000000600000001"
theorem small_2158476_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2158476_left_root small_2158476_left_fuel small_2158476_left_count small_2158476_left_encoded = true := by
  decide +kernel
theorem small_2158476_left_covered : CoveredBy scale carrier boxes small_2158476_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2158476_left_root small_2158476_left_fuel small_2158476_left_count small_2158476_left_encoded small_2158476_left_checked

theorem cover_2158476 : CoveredBy scale carrier boxes root_2158476 := by
  apply coveredBy_split_literal root_2158476 small_2158476_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0832.root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact small_2158476_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0832.covered
#print axioms cover_2158476

def root_2158470 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2158470_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2158470_left_fuel : Nat := 1
def small_2158470_left_count : Nat := 1
def small_2158470_left_encoded : String := "00000003"
theorem small_2158470_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2158470_left_root small_2158470_left_fuel small_2158470_left_count small_2158470_left_encoded = true := by
  decide +kernel
theorem small_2158470_left_covered : CoveredBy scale carrier boxes small_2158470_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2158470_left_root small_2158470_left_fuel small_2158470_left_count small_2158470_left_encoded small_2158470_left_checked

theorem cover_2158470 : CoveredBy scale carrier boxes root_2158470 := by
  apply coveredBy_split_literal root_2158470 small_2158470_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.root_2158476 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_2158470_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.cover_2158476
#print axioms cover_2158470

def root_2155228 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2155228 : CoveredBy scale carrier boxes root_2155228 := by
  apply coveredBy_split_literal root_2155228 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.root_2155229 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.root_2158470 coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.cover_2155229
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.cover_2158470
#print axioms cover_2155228

def root_2155222 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2155222_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2155222_left_fuel : Nat := 1
def small_2155222_left_count : Nat := 1
def small_2155222_left_encoded : String := "00000002"
theorem small_2155222_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2155222_left_root small_2155222_left_fuel small_2155222_left_count small_2155222_left_encoded = true := by
  decide +kernel
theorem small_2155222_left_covered : CoveredBy scale carrier boxes small_2155222_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2155222_left_root small_2155222_left_fuel small_2155222_left_count small_2155222_left_encoded small_2155222_left_checked

theorem cover_2155222 : CoveredBy scale carrier boxes root_2155222 := by
  apply coveredBy_split_literal root_2155222 small_2155222_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.root_2155228 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_2155222_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.cover_2155228
#print axioms cover_2155222

def root_2140314 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2140314 : CoveredBy scale carrier boxes root_2140314 := by
  apply coveredBy_split_literal root_2140314 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.root_2140315 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.root_2155222 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.cover_2140315
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.cover_2155222
#print axioms cover_2140314

def root_2140309 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2140309_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2140309_right_fuel : Nat := 1
def small_2140309_right_count : Nat := 1
def small_2140309_right_encoded : String := "00000001"
theorem small_2140309_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2140309_right_root small_2140309_right_fuel small_2140309_right_count small_2140309_right_encoded = true := by
  decide +kernel
theorem small_2140309_right_covered : CoveredBy scale carrier boxes small_2140309_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2140309_right_root small_2140309_right_fuel small_2140309_right_count small_2140309_right_encoded small_2140309_right_checked

theorem cover_2140309 : CoveredBy scale carrier boxes root_2140309 := by
  apply coveredBy_split_literal root_2140309 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.root_2140314 small_2140309_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.cover_2140314
  · exact small_2140309_right_covered
#print axioms cover_2140309

def root_2140111 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2140111_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2140111_left_fuel : Nat := 17
def small_2140111_left_count : Nat := 93
def small_2140111_left_encoded : String := "1151E903000000010A0001041151E8FB0A0000FC115225070A0000FE115224FF0000000408A91307120700FC08A912FF12073CFE00000004000000050000000500000003000000050000000A000000031151E907000000030000000500000002115224FB000000020A0000FC115225070A0000FE115224FF00000004000000051151E8FF08A912FB12073D0408A91307120700FC050000F600000005135D44F70500010200000005135D8103050000FE000000050000000A00000001000000000000000312073CFC00000003050000F600000005135D44F70500010200000005135D8103050000FE000000050000000A000000010000000000000002120701040000000208A91307120700FC00000005000000030000000500000004000000031151E907000000030A0000FE000000051151E8FF08A912FB12073D04050000F600000005135D44F70000000A00000000000000021207010400000002050000F600000005135D44F7000000090000000000000004"
theorem small_2140111_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2140111_left_root small_2140111_left_fuel small_2140111_left_count small_2140111_left_encoded = true := by
  decide +kernel
theorem small_2140111_left_covered : CoveredBy scale carrier boxes small_2140111_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2140111_left_root small_2140111_left_fuel small_2140111_left_count small_2140111_left_encoded small_2140111_left_checked

theorem cover_2140111 : CoveredBy scale carrier boxes root_2140111 := by
  apply coveredBy_split_literal root_2140111 small_2140111_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.root_2140309 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_2140111_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.cover_2140309
#print axioms cover_2140111

def root_2140106 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2140106_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2140106_right_fuel : Nat := 1
def small_2140106_right_count : Nat := 1
def small_2140106_right_encoded : String := "00000000"
theorem small_2140106_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2140106_right_root small_2140106_right_fuel small_2140106_right_count small_2140106_right_encoded = true := by
  decide +kernel
theorem small_2140106_right_covered : CoveredBy scale carrier boxes small_2140106_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2140106_right_root small_2140106_right_fuel small_2140106_right_count small_2140106_right_encoded small_2140106_right_checked

theorem cover_2140106 : CoveredBy scale carrier boxes root_2140106 := by
  apply coveredBy_split_literal root_2140106 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.root_2140111 small_2140106_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.cover_2140111
  · exact small_2140106_right_covered
#print axioms cover_2140106

def root_2127708 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2127708 : CoveredBy scale carrier boxes root_2127708 := by
  apply coveredBy_split_literal root_2127708 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.root_2127709 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.root_2140106 coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.cover_2127709
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.cover_2140106
#print axioms cover_2127708

def root_2127707 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2127707 : CoveredBy scale carrier boxes root_2127707 := by
  apply coveredBy_split_literal root_2127707 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.root_2127708 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0833.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.cover_2127708
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0833.covered
#print axioms cover_2127707

def root_2163063 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2163063_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2163063_left_fuel : Nat := 21
def small_2163063_left_count : Nat := 161
def small_2163063_left_encoded : String := "1151E8FB0A0000FC115225070A0001081151E8FF08A912F712073CF60000000008A91303120701020000000108A91307120700FC05000104135D44FB05000108135D44FF0CFD9BF70000000A00000006000000040000000600000002135D80FB0000000205000108135D44FF0CFD9BF70F350CF60000000004548A03138671020000000104548A07000000060000000A0000000A0F34D0F6000000060000000000000004135D80FF000000040CFD9BF70000000A000000060000000312073CFC0000000305000104135D44FB0000000A00000002135D80FB0000000205000108135D44FF0CFD9BF70000000A0F34D0F60000000A00000000000000040000000A12073D0208A91307120700FC0000000A000000030000000A00000001120700F608A91303120701020000000108A91307120700FC000000060000000312073CFC000000030500010400000005135D80FB000000020500010800000005135D80FF00000004045489F70000000A0000000512073D0208A91307120700FC000000050000000300000005000000010000000000000004115224FF0000000408A912F712073CF60000000008A91303120701020000000108A91307120700FC0000000A000000030000000A0000000A120700F608A91303120701020000000108A91307120700FC08A912FF12073D080500010400000006135D80FB00000002045489F70000000A000000060000000412070108000000040000000A000000030000000A0000000A00000000000000031151E907000000030A0001081151E8FF08A912F712073CF60000000008A9130312070102000000010000000A0000000A120700F608A9130312070102000000010000000A0000000500000000000000040000000A00000002"
theorem small_2163063_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2163063_left_root small_2163063_left_fuel small_2163063_left_count small_2163063_left_encoded = true := by
  decide +kernel
theorem small_2163063_left_covered : CoveredBy scale carrier boxes small_2163063_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2163063_left_root small_2163063_left_fuel small_2163063_left_count small_2163063_left_encoded small_2163063_left_checked

theorem cover_2163063 : CoveredBy scale carrier boxes root_2163063 := by
  apply coveredBy_split_literal root_2163063 small_2163063_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0834.root coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_2163063_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0834.covered
#print axioms cover_2163063

def root_2163058 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2163058_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2163058_right_fuel : Nat := 1
def small_2163058_right_count : Nat := 1
def small_2163058_right_encoded : String := "00000001"
theorem small_2163058_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2163058_right_root small_2163058_right_fuel small_2163058_right_count small_2163058_right_encoded = true := by
  decide +kernel
theorem small_2163058_right_covered : CoveredBy scale carrier boxes small_2163058_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2163058_right_root small_2163058_right_fuel small_2163058_right_count small_2163058_right_encoded small_2163058_right_checked

theorem cover_2163058 : CoveredBy scale carrier boxes root_2163058 := by
  apply coveredBy_split_literal root_2163058 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.root_2163063 small_2163058_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.cover_2163063
  · exact small_2163058_right_covered
#print axioms cover_2163058

def root_2162886 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2162886_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2162886_left_fuel : Nat := 14
def small_2162886_left_count : Nat := 79
def small_2162886_left_encoded : String := "1151E903000000010A0001041151E8FB0A0000FC0000000A1151E907000000030000000A00000002115224FB000000020A0000FC115225070A0001081151E8FF08A912F712073CF60000000008A912FB12073D0408A91307120700FC00000005000000030000000500000002120701040000000208A91307120700FC000000050000000300000005120700F6000000050000000000000004115224FF0000000408A912F712073CF60000000008A912FB0000000A120701040000000208A91307120700FC0000000A000000030000000A120700F608A912FB0000000A120701040000000208A91307120700FC00000005000000030000000A00000000000000031151E907000000030A0001081151E8FF08A912F712073CF60000000008A912FB0000000A00000009120700F60000000500000000000000040000000A"
theorem small_2162886_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2162886_left_root small_2162886_left_fuel small_2162886_left_count small_2162886_left_encoded = true := by
  decide +kernel
theorem small_2162886_left_covered : CoveredBy scale carrier boxes small_2162886_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2162886_left_root small_2162886_left_fuel small_2162886_left_count small_2162886_left_encoded small_2162886_left_checked

theorem cover_2162886 : CoveredBy scale carrier boxes root_2162886 := by
  apply coveredBy_split_literal root_2162886 small_2162886_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.root_2163058 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_2162886_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.cover_2163058
#print axioms cover_2162886

def root_2162880 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2162880_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2162880_left_fuel : Nat := 1
def small_2162880_left_count : Nat := 1
def small_2162880_left_encoded : String := "00000000"
theorem small_2162880_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2162880_left_root small_2162880_left_fuel small_2162880_left_count small_2162880_left_encoded = true := by
  decide +kernel
theorem small_2162880_left_covered : CoveredBy scale carrier boxes small_2162880_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2162880_left_root small_2162880_left_fuel small_2162880_left_count small_2162880_left_encoded small_2162880_left_checked

theorem cover_2162880 : CoveredBy scale carrier boxes root_2162880 := by
  apply coveredBy_split_literal root_2162880 small_2162880_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.root_2162886 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_2162880_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.cover_2162886
#print axioms cover_2162880

def root_2162879 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2162879 : CoveredBy scale carrier boxes root_2162879 := by
  apply coveredBy_split_literal root_2162879 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.root_2162880 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0835.root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.cover_2162880
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0835.covered
#print axioms cover_2162879

def root_2162878 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2162878 : CoveredBy scale carrier boxes root_2162878 := by
  apply coveredBy_split_literal root_2162878 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.root_2162879 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0836.root coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.cover_2162879
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0836.covered
#print axioms cover_2162878

def root_2127706 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2127706 : CoveredBy scale carrier boxes root_2127706 := by
  apply coveredBy_split_literal root_2127706 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.root_2127707 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.root_2162878 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.cover_2127707
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.cover_2162878
#print axioms cover_2127706

def root_2023936 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2023936 : CoveredBy scale carrier boxes root_2023936 := by
  apply coveredBy_split_literal root_2023936 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.root_2023937 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.root_2127706 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0051.cover_2023937
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.cover_2127706
#print axioms cover_2023936

def root_2175165 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2175165_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2175165_left_fuel : Nat := 23
def small_2175165_left_count : Nat := 375
def small_2175165_left_encoded : String := "1151E903000000010A0001041151E8FB0A0001061151E8FD0000000600000003115224FD000000030A0001081151E9090000000408A912F712073CF60000000008A912FD0000000612070106000000030500010200000006135D81030500010400000006135D80FB000000020500010800000007135D8109000000060000000400000001120700F608A912FD00000006120701060000000300000007000000001152250908A912F712073CF60000000008A912FD12073D0608A91309000000060000000600000003120701060000000308A9130912070108000000040000000A12073D0805000102135D45030000000100000006135D81030500010400000006000000060000000100000004120700F608A912FD12073D0608A913090000000812073D0805000102135D450300000001050001040000000600000006135D8103050001040000000600000006000000010000000400000003120701060000000308A913090000000812073D0805000102135D45030000000105000104135D44FB0000000A0000000200000008135D810305000104135D44FB045489F7000000080000000800000002000000080000000100000004000000000000000400000002115224FB000000020A0001061151E8FD0A0001081151E9090000000408A912F712073CF60000000008A912FB12073D0405000102135D45030000000100000006135D8103050001060000000700000007000000010000000212070104000000020500010200000008135D810305000106135D44FD0500010800000007135D81090CFD9BF7000000070000000600000004000000030000000800000001120700F600000008000000001152250908A912F712073CF60000000008A912FB12073D040000000600000002120701040000000208A9130912070108000000040000000612073D080500010200000006135D8103000000060000000100000004120700F600000006000000000000000400000003115224FD000000030A0001081151E9090000000408A912F712073CF60000000008A912FB12073D0408A912FD12073D0605000102135D45030000000105000108135D4509000000040CFD9BF7000000070000000600000006135D810305000108135D45090000000400000007135D81090CFD9BF70F350CF6000000000CFD9BFB00000007000000060F34D0F60000000700000000000000040000000100000003120701060000000305000102135D45030000000105000108135D4509000000040CFD9BF70000000700000007135D81090CFD9BF70F350CF6000000000CFD9BFB00000006000000060000000600000004135D810305000108135D4509000000040CFD9BF70000000700000007135D81090CFD9BF70F350CF6000000000CFD9BFB0F350D04045489FD000000060000000800000002000000080F34D0F60000000700000000000000040000000100000002120701040000000208A912FD12073D06000000080000000300000008120700F608A912FB12073D0408A912FD12073D06000000070000000312070106000000030500010200000008000000070000000200000008000000001152250908A912F712073CF60000000008A912FB12073D0408A912FD12073D0608A913090000000612073D080500010200000006135D81030CFD9BF70F350CF6000000000000000600000006000000010000000400000003120701060000000308A913090000000612073D0805000102135D4503000000010CFD9BF70F350CF6000000000000000600000006135D81030CFD9BF70F350CF6000000000CFD9BFB0F350D04045489FD0000000600000008000000020000000800000008000000010000000400000002120701040000000208A912FD12073D0608A913090000000612073D080500010200000006135D81030CFD9BF70F350CF6000000000000000600000006000000010000000400000003120701060000000300000008120700F608A912FB12073D0408A912FD12073D0608A913090000000600000008000000030000000800000002120701040000000208A912FD00000006000000080000000000000004"
theorem small_2175165_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2175165_left_root small_2175165_left_fuel small_2175165_left_count small_2175165_left_encoded = true := by
  decide +kernel
theorem small_2175165_left_covered : CoveredBy scale carrier boxes small_2175165_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2175165_left_root small_2175165_left_fuel small_2175165_left_count small_2175165_left_encoded small_2175165_left_checked

theorem cover_2175165 : CoveredBy scale carrier boxes root_2175165 := by
  apply coveredBy_split_literal root_2175165 small_2175165_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0839.root coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_2175165_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0839.covered
#print axioms cover_2175165

def root_2175159 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2175159_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2175159_left_fuel : Nat := 1
def small_2175159_left_count : Nat := 1
def small_2175159_left_encoded : String := "00000000"
theorem small_2175159_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2175159_left_root small_2175159_left_fuel small_2175159_left_count small_2175159_left_encoded = true := by
  decide +kernel
theorem small_2175159_left_covered : CoveredBy scale carrier boxes small_2175159_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2175159_left_root small_2175159_left_fuel small_2175159_left_count small_2175159_left_encoded small_2175159_left_checked

theorem cover_2175159 : CoveredBy scale carrier boxes root_2175159 := by
  apply coveredBy_split_literal root_2175159 small_2175159_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.root_2175165 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_2175159_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.cover_2175165
#print axioms cover_2175159

def root_2175158 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2175158 : CoveredBy scale carrier boxes root_2175158 := by
  apply coveredBy_split_literal root_2175158 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.root_2175159 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0840.root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.cover_2175159
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0840.covered
#print axioms cover_2175158

def root_2173460 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2173460 : CoveredBy scale carrier boxes root_2173460 := by
  apply coveredBy_split_literal root_2173460 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0838.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.root_2175158 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0838.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.cover_2175158
#print axioms cover_2173460

def root_2170612 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2170612 : CoveredBy scale carrier boxes root_2170612 := by
  apply coveredBy_split_literal root_2170612 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0837.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.root_2173460 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0837.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.cover_2173460
#print axioms cover_2170612

def root_2186064 : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2186064_right_root : ZRayBox := fun j => (#[⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2186064_right_fuel : Nat := 17
def small_2186064_right_count : Nat := 101
def small_2186064_right_encoded : String := "12073D0208A912FB12073D0405000106135D450700000003050000FE135D80FF000000040CFD9BF70F350CF6000000000CFD9C030F34D102000000010CFD9BFB0F350D040C9A86F6000000050F8750F70000000A00000000000000020F34D10400000002000000090F350D0200000005000000010F34D0F60000000500000000135D44FF0CFD9BF70F350CF6000000000CFD9C030F34D102000000010CFD9BFB0000000A000000090000000A0F34D0F60CFD9C0300000009000000090000000000000004135D8107050000FE135D80FF000000040CFD9BF70F350CF6000000000CFD9C030F34D102000000010CFD9BFB0F350D040C9A86F6000000090F8750F70C9A8704000000080000000700000000000000020F34D10400000002000000090F350D0200000009000000010F34D0F60000000900000000135D44FF0CFD9BF70F350CF6000000000CFD9C030F34D102000000010CFD9BFB0000000A000000090F350D0200000009000000010F34D0F6000000090000000000000004000000030000000212070104000000020000000900000001"
theorem small_2186064_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2186064_right_root small_2186064_right_fuel small_2186064_right_count small_2186064_right_encoded = true := by
  decide +kernel
theorem small_2186064_right_covered : CoveredBy scale carrier boxes small_2186064_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2186064_right_root small_2186064_right_fuel small_2186064_right_count small_2186064_right_encoded small_2186064_right_checked

theorem cover_2186064 : CoveredBy scale carrier boxes root_2186064 := by
  apply coveredBy_split_literal root_2186064 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0843.root small_2186064_right_root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0843.covered
  · exact small_2186064_right_covered
#print axioms cover_2186064

def root_2186058 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2186058_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2186058_left_fuel : Nat := 1
def small_2186058_left_count : Nat := 1
def small_2186058_left_encoded : String := "00000000"
theorem small_2186058_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2186058_left_root small_2186058_left_fuel small_2186058_left_count small_2186058_left_encoded = true := by
  decide +kernel
theorem small_2186058_left_covered : CoveredBy scale carrier boxes small_2186058_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2186058_left_root small_2186058_left_fuel small_2186058_left_count small_2186058_left_encoded small_2186058_left_checked

theorem cover_2186058 : CoveredBy scale carrier boxes root_2186058 := by
  apply coveredBy_split_literal root_2186058 small_2186058_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.root_2186064 coord0 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_2186058_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.cover_2186064
#print axioms cover_2186058

def root_2186057 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2186057_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2186057_right_fuel : Nat := 11
def small_2186057_right_count : Nat := 39
def small_2186057_right_encoded : String := "120700F608A91303120701020000000108A912FB12073D0405000106135D450700000003050000FE00000005135D44FF045489F7000000090000000900000004135D8107050000FE135D80FF00000004000000090000000900000003000000020000000912073D0208A912FB12073D040500010600000005135D8107050000FE00000005000000090000000300000002000000090000000100000000"
theorem small_2186057_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2186057_right_root small_2186057_right_fuel small_2186057_right_count small_2186057_right_encoded = true := by
  decide +kernel
theorem small_2186057_right_covered : CoveredBy scale carrier boxes small_2186057_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2186057_right_root small_2186057_right_fuel small_2186057_right_count small_2186057_right_encoded small_2186057_right_checked

theorem cover_2186057 : CoveredBy scale carrier boxes root_2186057 := by
  apply coveredBy_split_literal root_2186057 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.root_2186058 small_2186057_right_root coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.cover_2186058
  · exact small_2186057_right_covered
#print axioms cover_2186057

def root_2186052 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2186052_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2186052_right_fuel : Nat := 1
def small_2186052_right_count : Nat := 1
def small_2186052_right_encoded : String := "00000004"
theorem small_2186052_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2186052_right_root small_2186052_right_fuel small_2186052_right_count small_2186052_right_encoded = true := by
  decide +kernel
theorem small_2186052_right_covered : CoveredBy scale carrier boxes small_2186052_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2186052_right_root small_2186052_right_fuel small_2186052_right_count small_2186052_right_encoded small_2186052_right_checked

theorem cover_2186052 : CoveredBy scale carrier boxes root_2186052 := by
  apply coveredBy_split_literal root_2186052 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.root_2186057 small_2186052_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.cover_2186057
  · exact small_2186052_right_covered
#print axioms cover_2186052

def root_2182970 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2182970 : CoveredBy scale carrier boxes root_2182970 := by
  apply coveredBy_split_literal root_2182970 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0842.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.root_2186052 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0842.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.cover_2186052
#print axioms cover_2182970

def root_2182964 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2182964_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2182964_left_fuel : Nat := 1
def small_2182964_left_count : Nat := 1
def small_2182964_left_encoded : String := "00000003"
theorem small_2182964_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2182964_left_root small_2182964_left_fuel small_2182964_left_count small_2182964_left_encoded = true := by
  decide +kernel
theorem small_2182964_left_covered : CoveredBy scale carrier boxes small_2182964_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2182964_left_root small_2182964_left_fuel small_2182964_left_count small_2182964_left_encoded small_2182964_left_checked

theorem cover_2182964 : CoveredBy scale carrier boxes root_2182964 := by
  apply coveredBy_split_literal root_2182964 small_2182964_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.root_2182970 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_2182964_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.cover_2182970
#print axioms cover_2182964

def root_2182963 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2182963 : CoveredBy scale carrier boxes root_2182963 := by
  apply coveredBy_split_literal root_2182963 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.root_2182964 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0844.root coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.cover_2182964
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0844.covered
#print axioms cover_2182963

def root_2182957 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2182957_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2182957_left_fuel : Nat := 1
def small_2182957_left_count : Nat := 1
def small_2182957_left_encoded : String := "00000002"
theorem small_2182957_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2182957_left_root small_2182957_left_fuel small_2182957_left_count small_2182957_left_encoded = true := by
  decide +kernel
theorem small_2182957_left_covered : CoveredBy scale carrier boxes small_2182957_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2182957_left_root small_2182957_left_fuel small_2182957_left_count small_2182957_left_encoded small_2182957_left_checked

theorem cover_2182957 : CoveredBy scale carrier boxes root_2182957 := by
  apply coveredBy_split_literal root_2182957 small_2182957_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.root_2182963 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_2182957_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.cover_2182963
#print axioms cover_2182957

def root_2181485 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2181485 : CoveredBy scale carrier boxes root_2181485 := by
  apply coveredBy_split_literal root_2181485 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0841.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.root_2182957 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0841.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.cover_2182957
#print axioms cover_2181485

def root_2181480 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2181480_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2181480_right_fuel : Nat := 1
def small_2181480_right_count : Nat := 1
def small_2181480_right_encoded : String := "00000001"
theorem small_2181480_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2181480_right_root small_2181480_right_fuel small_2181480_right_count small_2181480_right_encoded = true := by
  decide +kernel
theorem small_2181480_right_covered : CoveredBy scale carrier boxes small_2181480_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2181480_right_root small_2181480_right_fuel small_2181480_right_count small_2181480_right_encoded small_2181480_right_checked

theorem cover_2181480 : CoveredBy scale carrier boxes root_2181480 := by
  apply coveredBy_split_literal root_2181480 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.root_2181485 small_2181480_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.cover_2181485
  · exact small_2181480_right_covered
#print axioms cover_2181480

def root_2181270 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2181270_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2181270_left_fuel : Nat := 15
def small_2181270_left_count : Nat := 97
def small_2181270_left_encoded : String := "1151E903000000010A0001041151E8FB0A0001061151E9070000000300000005115225070A0000FE115224FF0000000408A912F712073CF60000000008A913070000000712073D060000000500000003120700F600000005000000001151E8FF00000006000000040000000300000002115224FB000000020A0001061151E907000000030A0000FE115224FF0000000408A912F712073CF60000000008A912FB00000005120701040000000208A912FF00000005120700FE0000000500000004120700F608A912FB0000000500000009000000001151E8FF08A912F712073CF60000000008A912FB12073D040500010200000005135D8103050001060000000500000009000000010000000200000009120700F6000000050000000000000004115225070A0000FE115224FF0000000408A912F712073CF60000000008A912FB00000007120701040000000200000007120700F600000007000000001151E8FF08A912F712073CF60000000008A912FB0000000700000009000000090000000400000003"
theorem small_2181270_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2181270_left_root small_2181270_left_fuel small_2181270_left_count small_2181270_left_encoded = true := by
  decide +kernel
theorem small_2181270_left_covered : CoveredBy scale carrier boxes small_2181270_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2181270_left_root small_2181270_left_fuel small_2181270_left_count small_2181270_left_encoded small_2181270_left_checked

theorem cover_2181270 : CoveredBy scale carrier boxes root_2181270 := by
  apply coveredBy_split_literal root_2181270 small_2181270_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.root_2181480 coord1 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_2181270_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.cover_2181480
#print axioms cover_2181270

def root_2181264 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2181264_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2181264_left_fuel : Nat := 1
def small_2181264_left_count : Nat := 1
def small_2181264_left_encoded : String := "00000000"
theorem small_2181264_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2181264_left_root small_2181264_left_fuel small_2181264_left_count small_2181264_left_encoded = true := by
  decide +kernel
theorem small_2181264_left_covered : CoveredBy scale carrier boxes small_2181264_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2181264_left_root small_2181264_left_fuel small_2181264_left_count small_2181264_left_encoded small_2181264_left_checked

theorem cover_2181264 : CoveredBy scale carrier boxes root_2181264 := by
  apply coveredBy_split_literal root_2181264 small_2181264_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.root_2181270 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_2181264_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.cover_2181270
#print axioms cover_2181264

def root_2192804 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2192804 : CoveredBy scale carrier boxes root_2192804 := by
  apply coveredBy_split_literal root_2192804 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0846.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0847.root coord3 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0846.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0847.covered
#print axioms cover_2192804

def root_2192798 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2192798_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2192798_left_fuel : Nat := 1
def small_2192798_left_count : Nat := 1
def small_2192798_left_encoded : String := "00000000"
theorem small_2192798_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2192798_left_root small_2192798_left_fuel small_2192798_left_count small_2192798_left_encoded = true := by
  decide +kernel
theorem small_2192798_left_covered : CoveredBy scale carrier boxes small_2192798_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2192798_left_root small_2192798_left_fuel small_2192798_left_count small_2192798_left_encoded small_2192798_left_checked

theorem cover_2192798 : CoveredBy scale carrier boxes root_2192798 := by
  apply coveredBy_split_literal root_2192798 small_2192798_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.root_2192804 coord0 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_2192798_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.cover_2192804
#print axioms cover_2192798

def root_2192797 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2192797_right_root : ZRayBox := fun j => (#[⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2192797_right_fuel : Nat := 19
def small_2192797_right_count : Nat := 191
def small_2192797_right_encoded : String := "135D44F705000106135D45070000000304548A0313867102000000010CFD9BFB0F350D040CFD9BFF0F350CFE000000040C9A8704000000090F878CFB000000020C9A86FE000000090F8750FF00000009000000040F34D0FE0000000900000004000000020F34D104000000020CFD9BFF0F350CFE000000040C9A86FE000000060F8750FF028000F613D7ECF700000000028001060000000613D7ED07022A458313E1C502000000010AD3577B0000000A00000006000000060000000313D7B0F7028001060000000613D7ED07022A45830000000A00000006000000030000000000000004000000061386AD020CFD9BFB0F350D040CFD9BFF0F350CFE000000040C9A8704000000080F878CFB000000020C9A86FE0F878CFF00000004028000F60000000800000008000000080F34D0FE0000000600000004000000020F34D104000000020000000600000001135D810704548A0313867102000000010CFD9BFB0F350D040CFD9BFF0F350CFE000000040C9A8704000000080F878CFB000000020C9A86FE0F878CFF00000004028000F60000000800000008000000080F34D0FE0C9A8704000000080F878CFB000000020000000A00000004000000020F34D104000000020CFD9BFF0F350CFE000000040C9A86FE0F878CFF00000004028000F613D7ECF700000000078001060000000A0000000A0000000A0F8750FF028000F613D7ECF70000000007800106128A410700000003022A458313E1C502000000010AD3577B0000000A0000000A000000080000000813D7B0F70000000500000000000000040F34D0FE00000006000000041386AD020CFD9BFB0F350D040CFD9BFF0F350CFE000000040C9A8704000000080F878CFB000000020C9A86FE0F878CFF0000000400000008000000080F34D0FE0C9A8704000000080F878CFB00000002028000F6000000080000000800000004000000020F34D104000000020CFD9BFF0F350CFE000000040C9A86FE0F878CFF00000004028000F60000000800000008000000080F34D0FE0000000600000004000000010000000300000000"
theorem small_2192797_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2192797_right_root small_2192797_right_fuel small_2192797_right_count small_2192797_right_encoded = true := by
  decide +kernel
theorem small_2192797_right_covered : CoveredBy scale carrier boxes small_2192797_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2192797_right_root small_2192797_right_fuel small_2192797_right_count small_2192797_right_encoded small_2192797_right_checked

theorem cover_2192797 : CoveredBy scale carrier boxes root_2192797 := by
  apply coveredBy_split_literal root_2192797 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.root_2192798 small_2192797_right_root coord0 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.cover_2192798
  · exact small_2192797_right_covered
#print axioms cover_2192797

def root_2192791 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2192791_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2192791_left_fuel : Nat := 1
def small_2192791_left_count : Nat := 1
def small_2192791_left_encoded : String := "00000004"
theorem small_2192791_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2192791_left_root small_2192791_left_fuel small_2192791_left_count small_2192791_left_encoded = true := by
  decide +kernel
theorem small_2192791_left_covered : CoveredBy scale carrier boxes small_2192791_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2192791_left_root small_2192791_left_fuel small_2192791_left_count small_2192791_left_encoded small_2192791_left_checked

theorem cover_2192791 : CoveredBy scale carrier boxes root_2192791 := by
  apply coveredBy_split_literal root_2192791 small_2192791_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.root_2192797 coord4 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_2192791_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.cover_2192797
#print axioms cover_2192791

def root_2192790 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2192790_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2192790_right_fuel : Nat := 14
def small_2192790_right_count : Nat := 57
def small_2192790_right_encoded : String := "120700FE050000F6135D80F7000000000500010600000005135D810704548A0313867102000000010CFD9BFB0F350D04045489FF1386ACFE000000040C9A8704000000050F878CFB000000020000000600000005000000020F34D10400000002000000061386AD020CFD9BFB0F350D040000000500000002000000050000000100000003135D44F70500010600000006135D810704548A0313867102000000010000000A1386AD020CFD9BFB0F350D04045489FF1386ACFE000000040C9A8704000000080000000600000006000000020000000600000001000000030000000000000004"
theorem small_2192790_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2192790_right_root small_2192790_right_fuel small_2192790_right_count small_2192790_right_encoded = true := by
  decide +kernel
theorem small_2192790_right_covered : CoveredBy scale carrier boxes small_2192790_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2192790_right_root small_2192790_right_fuel small_2192790_right_count small_2192790_right_encoded small_2192790_right_checked

theorem cover_2192790 : CoveredBy scale carrier boxes root_2192790 := by
  apply coveredBy_split_literal root_2192790 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.root_2192791 small_2192790_right_root coord4 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.cover_2192791
  · exact small_2192790_right_covered
#print axioms cover_2192790

def root_2192785 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2192785_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15123200), (16777216)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2192785_right_fuel : Nat := 1
def small_2192785_right_count : Nat := 1
def small_2192785_right_encoded : String := "00000002"
theorem small_2192785_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2192785_right_root small_2192785_right_fuel small_2192785_right_count small_2192785_right_encoded = true := by
  decide +kernel
theorem small_2192785_right_covered : CoveredBy scale carrier boxes small_2192785_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2192785_right_root small_2192785_right_fuel small_2192785_right_count small_2192785_right_encoded small_2192785_right_checked

theorem cover_2192785 : CoveredBy scale carrier boxes root_2192785 := by
  apply coveredBy_split_literal root_2192785 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.root_2192790 small_2192785_right_root coord2 false (15123200)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.cover_2192790
  · exact small_2192785_right_covered
#print axioms cover_2192785

def root_2192784 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2192784_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2192784_right_fuel : Nat := 23
def small_2192784_right_count : Nat := 169
def small_2192784_right_encoded : String := "120701040000000208A912FF12073CFE00000004050000F6135D80F70000000005000106135D45070000000300000006135D810704548A031386710200000001045489FB1386AD040CFD9BFF0F350CFE000000040C9A86FE0F878CFF00000004078000F6128A7CF7000000000780010600000006128A7D070000000A000000030000000A0F8750FF078000F6128A7CF70000000007800106128A410700000003022A458313E1C50200000001067ECE7B000000060000000600000006128A7D07022A458313E1C50200000001067ECE7B0000000A0000000A13E20102067ECE7B00000007000000090000000100000003128A40F707800106128A41070000000300000006128A7D07022A45830000000A13E20102067ECE7B0000000A0000000A000000010000000300000000000000040F34D0FE00000006000000040000000213867104000000020CFD9BFF0F350CFE000000040C9A86FE000000060F8750FF078000F6128A7CF7000000000780010600000006128A7D07022A45830000000600000006000000030000000A00000004000000061386AD02045489FB1386AD040CFD9BFF0F350CFE000000040C9A86FE0F878CFF00000004000000060F8750FF078000F6128A7CF70000000000000009128A40F70780010600000006128A7D07000000070000000300000000000000040F34D0FE0000000600000004000000021386710400000002000000060000000100000003135D44F70500010600000006135D810704548A031386710200000001045489FB0000000A000000061386AD02045489FB1386AD040CFD9BFF0F350CFE000000040C9A86FE000000060F8750FF028000F613D7ECF7000000000780010600000006000000080000000800000004000000060000000200000006000000010000000300000000120700FE0000000600000004"
theorem small_2192784_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2192784_right_root small_2192784_right_fuel small_2192784_right_count small_2192784_right_encoded = true := by
  decide +kernel
theorem small_2192784_right_covered : CoveredBy scale carrier boxes small_2192784_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2192784_right_root small_2192784_right_fuel small_2192784_right_count small_2192784_right_encoded small_2192784_right_checked

theorem cover_2192784 : CoveredBy scale carrier boxes root_2192784 := by
  apply coveredBy_split_literal root_2192784 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.root_2192785 small_2192784_right_root coord2 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.cover_2192785
  · exact small_2192784_right_covered
#print axioms cover_2192784

def root_2192778 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2192778_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2192778_left_fuel : Nat := 1
def small_2192778_left_count : Nat := 1
def small_2192778_left_encoded : String := "00000001"
theorem small_2192778_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2192778_left_root small_2192778_left_fuel small_2192778_left_count small_2192778_left_encoded = true := by
  decide +kernel
theorem small_2192778_left_covered : CoveredBy scale carrier boxes small_2192778_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2192778_left_root small_2192778_left_fuel small_2192778_left_count small_2192778_left_encoded small_2192778_left_checked

theorem cover_2192778 : CoveredBy scale carrier boxes root_2192778 := by
  apply coveredBy_split_literal root_2192778 small_2192778_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.root_2192784 coord1 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_2192778_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.cover_2192784
#print axioms cover_2192778

def root_2192777 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2192777_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2192777_right_fuel : Nat := 22
def small_2192777_right_count : Nat := 363
def small_2192777_right_encoded : String := "12073D0208A912FB12073D0408A912FF12073CFE00000004050000F6135D80F70000000005000106135D4507000000030CFD9C030F34D102000000010CFD9BFB0F350D040CFD9BFF0F350CFE000000040C9A8704000000050F878CFB000000020C9A86FE000000050F8750FF078000F600000005128A40F700000008000000000000000400000005000000020F34D104000000020CFD9BFF0F350CFE000000040C9A86FE000000050F8750FF078000F600000005128A40F7028001060000000513D7ED0700000008000000030000000000000004000000060F350D020000000500000001135D81070CFD9C030F34D102000000010CFD9BFB0F350D040CFD9BFF0F350CFE000000040C9A87040F8750FB0C9A86FE0000000700000008000000020F878CFB000000020C9A86FE000000070F8750FF00000007000000040F34D0FE0C9A8704000000050000000700000004000000020F34D104000000020CFD9BFF0F350CFE000000040C9A86FE000000070F8750FF00000007000000040F34D0FE00000007000000040F350D020CFD9BFB0F350D040CFD9BFF000000070F34D0FE0000000500000004000000020F34D10400000002000000070000000100000003135D44F705000106135D4507000000030CFD9C030F34D102000000010CFD9BFB0F350D040CFD9BFF0F350CFE000000040C9A8704000000080F878CFB000000020C9A86FE0F878CFF0000000400000008000000080F34D0FE0000000500000004000000020F34D104000000020CFD9BFF0F350CFE000000040C9A86FE000000060F8750FF028000F6000000080000000800000004000000060F350D020CFD9BFB0F350D040CFD9BFF0F350CFE000000040C9A8702000000050F878D030C9A8704000000050F878CFB000000020C9A86FE00000005000000080000000100000005000000020F34D104000000020CFD9BFF0F350CFE000000040C9A87020F87510300000001000000050F878D030C9A86FE0000000600000008000000010F34D0FE000000050000000400000001135D81070CFD9C030F34D102000000010CFD9BFB0F350D040CFD9BFF0F350CFE000000040C9A8704000000080F878CFB000000020C9A86FE0F878CFF0000000400000008000000080F34D0FE0C9A8704000000080F878CFB00000002028000F6000000070000000800000004000000020F34D104000000020CFD9BFF0F350CFE000000040C9A86FE0F878CFF00000004028000F60000000700000008000000080F34D0FE00000006000000040F350D020CFD9BFB0F350D040CFD9BFF0F350CFE000000040C9A87020F87510300000001000000070F878D030C9A87040000000800000007000000010F34D0FE0000000700000004000000020F34D104000000020CFD9BFF000000070F34D0FE0000000700000004000000010000000300000000120700FE050000F600000005135D44F70500010600000005135D81070CFD9C030F34D102000000010CFD9BFB0F350D04045489FF1386ACFE000000040C9A870400000005000000060000000500000002000000060F350D02000000050000000100000003000000000000000400000002120701040000000208A912FF12073CFE00000004050000F6135D80F70000000005000106135D4507000000030CFD9C030F34D102000000010000000600000006135D81070CFD9C030F34D10200000001045489FB1386AD040CFD9BFF000000070F34D0FE0000000600000004000000021386710400000002000000060000000700000003135D44F705000106135D4507000000030CFD9C030F34D102000000010000000600000006135D81070CFD9C030F34D10200000001045489FB1386AD040CFD9BFF0F350CFE000000040C9A86FE00000006000000080000000600000002000000060F350D02045489FB1386AD040CFD9BFF000000070F34D0FE000000060000000400000002138671040000000200000006000000010000000300000000120700FE000000060000000400000001"
theorem small_2192777_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2192777_right_root small_2192777_right_fuel small_2192777_right_count small_2192777_right_encoded = true := by
  decide +kernel
theorem small_2192777_right_covered : CoveredBy scale carrier boxes small_2192777_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2192777_right_root small_2192777_right_fuel small_2192777_right_count small_2192777_right_encoded small_2192777_right_checked

theorem cover_2192777 : CoveredBy scale carrier boxes root_2192777 := by
  apply coveredBy_split_literal root_2192777 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.root_2192778 small_2192777_right_root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.cover_2192778
  · exact small_2192777_right_covered
#print axioms cover_2192777

def root_2192771 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2192771_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2192771_left_fuel : Nat := 1
def small_2192771_left_count : Nat := 1
def small_2192771_left_encoded : String := "00000004"
theorem small_2192771_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2192771_left_root small_2192771_left_fuel small_2192771_left_count small_2192771_left_encoded = true := by
  decide +kernel
theorem small_2192771_left_covered : CoveredBy scale carrier boxes small_2192771_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2192771_left_root small_2192771_left_fuel small_2192771_left_count small_2192771_left_encoded small_2192771_left_checked

theorem cover_2192771 : CoveredBy scale carrier boxes root_2192771 := by
  apply coveredBy_split_literal root_2192771 small_2192771_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.root_2192777 coord4 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_2192771_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.cover_2192777
#print axioms cover_2192771

def root_2199455 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(-15553280), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2199455_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(-15553280), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(0), (2097152)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2199455_left_fuel : Nat := 23
def small_2199455_left_count : Nat := 327
def small_2199455_left_encoded : String := "13D7B10700000003078000FE128A7CFF00000004022A458313E1C502000000010DE7CA040E5FD8FB08C000F611FC24F7000000000140010613F5D9070000000308C000FE11FC24FF000000040115234300000007000000050000000713F6150708C000FE11FC24FF000000040115234313F85902000000010D412884000000070EFA4CFB000000020000000713F895020D412884000000050EFA4CFB00000002096000F60000000511AA80F70000000A000000000000000111FBE8FF01152343000000070000000A000000040000000311FBE8F7014001060000000713F6150708C000FE11FC24FF00000004011523430000000713F895020D412884000000070EFA4CFB000000020000000700000001000000070000000300000000000000020E6014FB0000000208C000F611FC24F7000000000140010613F5D9070000000308C000FE11FC24FF000000040115234300000007000000050000000713F6150708C000FE11FC24FF000000040115234313F85902000000010DAED87B0E966104096000F611AABCF7000000000000000700000007000000020E96250400000002096000F611AABCF700000000000000070000000713F895020DAED87B0E966104096000F60000000511AA80F701E001060000000513E99507096000FE00000005000000070000000300000000000000020E96250400000002096000F60000000511AA80F700000006000000000000000111FBE8FF011523430000000713F895020DAED87B0E9661040000000A000000020E96250400000002096000F6000000090000000700000001000000040000000311FBE8F7014001060000000713F6150708C000FE11FC24FF00000004011523430000000713F895020DAED87B0E966104082000F6124698F70000000001E00106000000060000000700000007000000020E96250400000002000000060000000100000007000000030000000013E201020DE7CA040E5FD8FB08C000F611FC24F7000000000000000A11FBE8F70140010613F5D907000000030000000A13F6150708C000FE11FC24FF00000004033F67C313BBF502000000010D412884000000080EFA4CFB000000020000000A000000080000000A0000000300000000000000020E6014FB0000000208C000F611FC24F7000000000140010613F5D9070000000308C000FE0000000511FBE8FF0000000A0000000413F6150708C000FE11FC24FF00000004033F67C313BBF502000000010DAED87B0E9661040000000500000002000000050000000511FBE8FF0000000A000000040000000311FBE8F70140010613F5D9070000000308C000FE11FC24FF000000040000000611FBE8FF033F67C3000000070000000A0000000413F6150708C000FE11FC24FF00000004033F67C313BBF502000000010DAED87B0E966104082000F6124698F70000000001E001060000000513E99507096000FE000000050000000A0000000312465CF701E00106000000060000000800000000000000020E962504000000020000000613BC31020DAED87B0E96610400000008000000020E96250400000002000000060000000111FBE8FF033F67C313BBF502000000010DAED87B0E9661040000000A000000020E96250400000002082000F60000000A000000070000000A00000004000000030000000000000001128A40FF022A458313E1C502000000010DE7CA04000000070E6014FB0000000208C000F611FC24F700000000000000070000000713E201020DE7CA040000000A0E6014FB0000000208C000F60000000A11FBE8F70000000A000000000000000100000004"
theorem small_2199455_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2199455_left_root small_2199455_left_fuel small_2199455_left_count small_2199455_left_encoded = true := by
  decide +kernel
theorem small_2199455_left_covered : CoveredBy scale carrier boxes small_2199455_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2199455_left_root small_2199455_left_fuel small_2199455_left_count small_2199455_left_encoded small_2199455_left_checked

theorem cover_2199455 : CoveredBy scale carrier boxes root_2199455 := by
  apply coveredBy_split_literal root_2199455 small_2199455_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0848.root coord3 false (2097152)
  · decide +kernel
  · decide +kernel
  · exact small_2199455_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0848.covered
#print axioms cover_2199455

def root_2199449 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2199449_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-6291456)⟩, ⟨(-16244736), (-15553280)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2199449_left_fuel : Nat := 1
def small_2199449_left_count : Nat := 1
def small_2199449_left_encoded : String := "00000000"
theorem small_2199449_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2199449_left_root small_2199449_left_fuel small_2199449_left_count small_2199449_left_encoded = true := by
  decide +kernel
theorem small_2199449_left_covered : CoveredBy scale carrier boxes small_2199449_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2199449_left_root small_2199449_left_fuel small_2199449_left_count small_2199449_left_encoded small_2199449_left_checked

theorem cover_2199449 : CoveredBy scale carrier boxes root_2199449 := by
  apply coveredBy_split_literal root_2199449 small_2199449_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.root_2199455 coord0 true (-15553280)
  · decide +kernel
  · decide +kernel
  · exact small_2199449_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.cover_2199455
#print axioms cover_2199449

def root_2199448 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2199448_right_root : ZRayBox := fun j => (#[⟨⟨(-6291456), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-13027072), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2199448_right_fuel : Nat := 23
def small_2199448_right_count : Nat := 229
def small_2199448_right_encoded : String := "128A40F70280010613D7B10700000003078000FE128A7CFF00000004022A458313E1C502000000010DE7CA04000000070E6014FB00000002064000F612FFACF7000000000140010600000007000000070000000713E201020DE7CA040E5FD8FB064000F612FFACF7000000000140010613F5D9070000000308C000FE11FC24FF0000000400000008000000070000000800000008000000020E6014FB00000002064000F612FFACF7000000000140010613F5D9070000000308C000FE000000060000000713F6150708C000FE11FC24FF00000004033F67C313BBF502000000010DAED87B0E9661040000000800000002000000060000000811FBE8FF033F67C30000000700000008000000040000000312FF70F70140010613F5D9070000000308C000FE000000060000000713F6150708C000FE0000000800000008000000030000000000000001128A40FF022A45830000000713E201020DE7CA040E5FD8FB0000000A000000020E6014FB00000002064000F612FFACF700000000014001060000000713F61507064000FE12FFACFF00000004033F67C30000000700000008000000070000000300000007000000010000000413D7ED07078000FE128A7CFF00000004022A458313E1C502000000010DE7CA040E5FD8FB064000F612FFACF70000000003C0010613A511070000000308C000FE00000009000000070000000800000008000000020E6014FB00000002064000F612FFACF70000000003C0010613A511070000000308C000FE11FC24FF00000004011523430000000713F895020DAED87B0E96610400000008000000020E9625040000000206E000F612C820F70000000003200106000000060000000800000007000000010000000713A54D0708C000FE11FC24FF000000040115234313F85902000000010000000500000008000000050000000312FF70F703C0010613A511070000000308C000FE0000000900000005000000050000000013E201020DE7CA04000000080E6014FB00000002064000F612FFACF70000000003C0010613A511070000000308C000FE11FC24FF000000040000000800000008000000080000000800000001128A40FF022A458313E1C502000000010DE7CA040E5FD8FB00000005000000020000000513E201020DE7CA04000000080E6014FB00000002064000F612FFACF70000000003C0010613A5110700000003064000FE12FFACFF000000040000000800000005000000050000000500000001000000040000000300000000"
theorem small_2199448_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2199448_right_root small_2199448_right_fuel small_2199448_right_count small_2199448_right_encoded = true := by
  decide +kernel
theorem small_2199448_right_covered : CoveredBy scale carrier boxes small_2199448_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2199448_right_root small_2199448_right_fuel small_2199448_right_count small_2199448_right_encoded small_2199448_right_checked

theorem cover_2199448 : CoveredBy scale carrier boxes root_2199448 := by
  apply coveredBy_split_literal root_2199448 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.root_2199449 small_2199448_right_root coord0 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.cover_2199449
  · exact small_2199448_right_covered
#print axioms cover_2199448

def root_2199442 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2199442_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(10572672), (12756736)⟩, ⟨(-14529792), (-13027072)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2199442_left_fuel : Nat := 1
def small_2199442_left_count : Nat := 1
def small_2199442_left_encoded : String := "00000002"
theorem small_2199442_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2199442_left_root small_2199442_left_fuel small_2199442_left_count small_2199442_left_encoded = true := by
  decide +kernel
theorem small_2199442_left_covered : CoveredBy scale carrier boxes small_2199442_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2199442_left_root small_2199442_left_fuel small_2199442_left_count small_2199442_left_encoded small_2199442_left_checked

theorem cover_2199442 : CoveredBy scale carrier boxes root_2199442 := by
  apply coveredBy_split_literal root_2199442 small_2199442_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.root_2199448 coord2 true (-13027072)
  · decide +kernel
  · decide +kernel
  · exact small_2199442_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.cover_2199448
#print axioms cover_2199442

def root_2199258 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (12756736)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2199258_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (10572672)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2199258_left_fuel : Nat := 19
def small_2199258_left_count : Nat := 87
def small_2199258_left_encoded : String := "0F8750FB078000F6128A7CF7000000000280010613D7B10700000003078000FE128A7CFF00000004022A458313E1C502000000010B4D44040000000910804CFB0000000208C000F611FC24F700000000014001060000000A0000000A000000090000000A0000000A13D7ED07078000FE128A7CFF00000004022A458313E1C502000000010B4D4404108010FB000000090000000210804CFB0000000208C000F611FC24F70000000003C0010613A51107000000030000000A13A54D0708C000FE11FC24FF000000040115234300000009000000080000000A0000000311FBE8F703C0010613A511070000000300000009000000080000000000000008128A40FF0000000A0000000400000003128A40F70280010613D7B10700000003078000FE00000009128A40FF022A458300000007000000080000000413D7ED07078000FE128A7CFF000000040000000800000008000000030000000000000002"
theorem small_2199258_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2199258_left_root small_2199258_left_fuel small_2199258_left_count small_2199258_left_encoded = true := by
  decide +kernel
theorem small_2199258_left_covered : CoveredBy scale carrier boxes small_2199258_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2199258_left_root small_2199258_left_fuel small_2199258_left_count small_2199258_left_encoded small_2199258_left_checked

theorem cover_2199258 : CoveredBy scale carrier boxes root_2199258 := by
  apply coveredBy_split_literal root_2199258 small_2199258_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.root_2199442 coord2 false (10572672)
  · decide +kernel
  · decide +kernel
  · exact small_2199258_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.cover_2199442
#print axioms cover_2199258

def root_2199253 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2199253_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(12756736), (15123200)⟩, ⟨(-14529792), (-10897344)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2199253_right_fuel : Nat := 1
def small_2199253_right_count : Nat := 1
def small_2199253_right_encoded : String := "00000002"
theorem small_2199253_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2199253_right_root small_2199253_right_fuel small_2199253_right_count small_2199253_right_encoded = true := by
  decide +kernel
theorem small_2199253_right_covered : CoveredBy scale carrier boxes small_2199253_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2199253_right_root small_2199253_right_fuel small_2199253_right_count small_2199253_right_encoded small_2199253_right_checked

theorem cover_2199253 : CoveredBy scale carrier boxes root_2199253 := by
  apply coveredBy_split_literal root_2199253 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.root_2199258 small_2199253_right_root coord2 false (12756736)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.cover_2199258
  · exact small_2199253_right_covered
#print axioms cover_2199253

def root_2199252 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2199252 : CoveredBy scale carrier boxes root_2199252 := by
  apply coveredBy_split_literal root_2199252 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.root_2199253 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0849.root coord2 true (-10897344)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.cover_2199253
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0849.covered
#print axioms cover_2199252

def root_2199246 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2199246_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2199246_left_fuel : Nat := 1
def small_2199246_left_count : Nat := 1
def small_2199246_left_encoded : String := "00000001"
theorem small_2199246_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2199246_left_root small_2199246_left_fuel small_2199246_left_count small_2199246_left_encoded = true := by
  decide +kernel
theorem small_2199246_left_covered : CoveredBy scale carrier boxes small_2199246_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2199246_left_root small_2199246_left_fuel small_2199246_left_count small_2199246_left_encoded small_2199246_left_checked

theorem cover_2199246 : CoveredBy scale carrier boxes root_2199246 := by
  apply coveredBy_split_literal root_2199246 small_2199246_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.root_2199252 coord1 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_2199246_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.cover_2199252
#print axioms cover_2199246

def root_2199245 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2199245_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(3632448), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2199245_right_fuel : Nat := 21
def small_2199245_right_count : Nat := 295
def small_2199245_right_encoded : String := "1386AD020CFD9BFB0F350D040C9A87040F8750FB078000F60000000A00000008000000020F878CFB00000002078000F6128A7CF7000000000280010613D7B10700000003078000FE128A7CFF00000004067ECE8312EA5902000000010DE7CA040E5FD8FB0000000A000000020E6014FB0000000208C000F60000000A11FBE8F7014001060000000A0000000A000000000000000A0000000A13D7ED07078000FE128A7CFF00000004067ECE8312EA5902000000010DE7CA04000000080E6014FB0000000208C000F611FC24F70000000003C001060000000A0000000A11FBE8F70000000800000000000000080000000A00000003128A40F70280010613D7B10700000003078000FE128A7CFF00000004067ECE8312EA5902000000010DE7CA04000000080E6014FB00000002064000F612FFACF7000000000140010613F5D9070000000308C000FE0000000600000008000000080000000800000008128A40FF067ECE8312EA5902000000010000000A000000080000000413D7ED07078000FE00000008000000080000000300000000000000020F34D10400000002078000F6128A7CF7000000000280010613D7B10700000003078000FE128A7CFF00000004067ECE8312EA5902000000010AD3577B10D13D0408C000F60000000911FBE8F7014001060000000613F6150708C000FE000000060000000900000003000000000000000200000009000000090000000913D7ED07078000FE128A7CFF00000004067ECE8312EA5902000000010AD3577B10D13D0408C000F60000000911FBE8F700000009000000000000000200000009000000090000000900000003128A40F70280010613D7B10700000003078000FE128A7CFF00000004067ECE8312EA5902000000010AD3577B10D13D04064000F612FFACF700000000014001060000000613F6150708C000FE0000000611FBE8FF0569AC430000000600000006000000040000000312FF70F70000000600000000000000020000000600000006128A40FF067ECE8312EA5902000000010AD3577B10D13D04064000F612FFACF7000000000140010613F5D90700000003064000FE12FFACFF000000040569AC4300000009000000060000000913F61507064000FE12FFACFF0000000400000009000000090000000312FF70F70140010613F5D90700000003064000FE12FFACFF000000040000000612FF70FF0000000A0000000413F61507064000FE12FFACFF00000004000000080000000800000003000000000000000210D10104000000020000000912EA95020AD3577B10D13D04064000F600000009000000080000000200000009000000010000000413D7ED07078000FE128A7CFF00000004067ECE8312EA5902000000010AD3577B10D13D04064000F612FFACF70000000003C0010613A511070000000308C000FE11FC24FF00000004000000060000000800000008000000080000000210D1010400000002064000F60000000912FF70F7000000060000000012EA95020AD3577B000000080000000900000001128A40FF067ECE8312EA5902000000010AD3577B10D13D04064000F60000000900000008000000020000000912EA9502000000090000000100000004000000030000000000000001"
theorem small_2199245_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2199245_right_root small_2199245_right_fuel small_2199245_right_count small_2199245_right_encoded = true := by
  decide +kernel
theorem small_2199245_right_covered : CoveredBy scale carrier boxes small_2199245_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2199245_right_root small_2199245_right_fuel small_2199245_right_count small_2199245_right_encoded small_2199245_right_checked

theorem cover_2199245 : CoveredBy scale carrier boxes root_2199245 := by
  apply coveredBy_split_literal root_2199245 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.root_2199246 small_2199245_right_root coord1 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.cover_2199246
  · exact small_2199245_right_covered
#print axioms cover_2199245

def root_2199239 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2199239_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2199239_left_fuel : Nat := 1
def small_2199239_left_count : Nat := 1
def small_2199239_left_encoded : String := "00000004"
theorem small_2199239_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2199239_left_root small_2199239_left_fuel small_2199239_left_count small_2199239_left_encoded = true := by
  decide +kernel
theorem small_2199239_left_covered : CoveredBy scale carrier boxes small_2199239_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2199239_left_root small_2199239_left_fuel small_2199239_left_count small_2199239_left_encoded small_2199239_left_checked

theorem cover_2199239 : CoveredBy scale carrier boxes root_2199239 := by
  apply coveredBy_split_literal root_2199239 small_2199239_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.root_2199245 coord4 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_2199239_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.cover_2199245
#print axioms cover_2199239

def root_2199238 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2199238_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(16243968), (16777216)⟩⟩, ⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2199238_right_fuel : Nat := 17
def small_2199238_right_count : Nat := 127
def small_2199238_right_encoded : String := "135D44FF04548A0313867102000000010CFD9BFB0F350D040C9A87040F8750FB078000F60000000A128A40F70000000A00000000000000020F878CFB00000002078000F6128A7CF7000000000280010613D7B10700000003028000FE13D7ECFF00000004022A4583000000070000000A0000000713D7ED07028000FE13D7ECFF00000004022A458313E1C502000000010DE7CA040000000A000000050000000A0000000500000003128A40F702800106000000070000000500000000000000020F34D10400000002078000F6128A7CF7000000000280010613D7B10700000003028000FE13D7ECFF00000004000000090000000900000009128A40F70280010613D7B10700000003028000FE13D7ECFF00000004022A45830000000713E201020AD3577B10D13D04000000070000000200000009000000010000000500000005000000001386AD020CFD9BFB0F350D040C9A87040000000A0F878CFB00000002078000F60000000A128A40F70000000A00000000000000020F34D10400000002078000F600000009128A40F70280010613D7B10700000003028000FE13D7ECFF00000004067ECE8312EA5902000000010AD3577B10D13D040000000A0000000200000009000000090000000913D7ED07028000FE13D7ECFF00000004067ECE8300000009000000090000000500000003000000000000000100000004"
theorem small_2199238_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2199238_right_root small_2199238_right_fuel small_2199238_right_count small_2199238_right_encoded = true := by
  decide +kernel
theorem small_2199238_right_covered : CoveredBy scale carrier boxes small_2199238_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2199238_right_root small_2199238_right_fuel small_2199238_right_count small_2199238_right_encoded small_2199238_right_checked

theorem cover_2199238 : CoveredBy scale carrier boxes root_2199238 := by
  apply coveredBy_split_literal root_2199238 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.root_2199239 small_2199238_right_root coord4 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.cover_2199239
  · exact small_2199238_right_covered
#print axioms cover_2199238

def root_2199232 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2199232_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (4194304)⟩, ⟨(14529024), (16243968)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2199232_left_fuel : Nat := 1
def small_2199232_left_count : Nat := 1
def small_2199232_left_encoded : String := "00000003"
theorem small_2199232_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2199232_left_root small_2199232_left_fuel small_2199232_left_count small_2199232_left_encoded = true := by
  decide +kernel
theorem small_2199232_left_covered : CoveredBy scale carrier boxes small_2199232_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2199232_left_root small_2199232_left_fuel small_2199232_left_count small_2199232_left_encoded small_2199232_left_checked

theorem cover_2199232 : CoveredBy scale carrier boxes root_2199232 := by
  apply coveredBy_split_literal root_2199232 small_2199232_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.root_2199238 coord3 true (16243968)
  · decide +kernel
  · decide +kernel
  · exact small_2199232_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.cover_2199238
#print axioms cover_2199232

def root_2199231 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_2199231 : CoveredBy scale carrier boxes root_2199231 := by
  apply coveredBy_split_literal root_2199231 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.root_2199232 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0850.root coord3 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.cover_2199232
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0850.covered
#print axioms cover_2199231

def root_2199225 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2199225_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_2199225_left_fuel : Nat := 1
def small_2199225_left_count : Nat := 1
def small_2199225_left_encoded : String := "00000000"
theorem small_2199225_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_2199225_left_root small_2199225_left_fuel small_2199225_left_count small_2199225_left_encoded = true := by
  decide +kernel
theorem small_2199225_left_covered : CoveredBy scale carrier boxes small_2199225_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_2199225_left_root small_2199225_left_fuel small_2199225_left_count small_2199225_left_encoded small_2199225_left_checked

theorem cover_2199225 : CoveredBy scale carrier boxes root_2199225 := by
  apply coveredBy_split_literal root_2199225 small_2199225_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.root_2199231 coord0 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_2199225_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052.cover_2199231
#print axioms cover_2199225

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0052
