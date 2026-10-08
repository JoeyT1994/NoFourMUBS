import TaoBundleAssembly0018
import TaoBundleChunkBatch0066
import TaoBundleChunkBatch0068
import TaoBundleChunkBatch0069
import TaoBundleChunkBatch0070
import TaoBundleChunkBatch0071
import TaoBundleChunkBatch0072
import TaoBundleChunkBatch0073
import TaoBundleChunkBatch0074
import TaoBundleData
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019
def root_721287 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_721287_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_721287_left_fuel : Nat := 29
def small_721287_left_count : Nat := 371
def small_721287_left_encoded : String := "12073CF60000000008A912FB12073D04050000F8135D8103050001060000000A135D8107050000FE135D81090CFD9BF7000000050F34D0F60000000500000000000000040000000A0000000300000001135D450300000001050001060000000A135D8107050000FE135D81090CFD9BF70000000A0F34D0F60000000A00000000000000040000000A00000003000000021207010400000002050000F8135D810305000106135D450700000003050000FE135D81090CFD9BF70F350CF600000000045489FB0000000513867104000000020C9A86F60000000A0000000A0F34D0F6045489FB0000000A1386710400000002078000F8128A7D03028001060000000A13D7ED07078000FE128A7D090AD357770000000510D100F60000000A00000000000000040000000A0000000300000001128A410300000001028001060000000A13D7ED07078000FE128A7D090AD357770000000610D100F6000000080000000000000004000000080000000300000000000000040000000A135D8107050000FE135D81090CFD9BF70F350CF600000000045489FB1386AD040C9A86F6000000050F8750F700000005000000000000000213867104000000020C9A86F60F878CF700000000078000F8128A7D0307800106128A4107000000030000000A128A7D07078000FE00000005000000080000000300000001128A410300000001000000080F8750F7078000F8128A7D030780010600000005128A7D07078000FE0000000500000008000000030000000100000008000000000F34D0F6045489FB1386AD04078000F8128A7D030780010600000005128A7D07000000050000000300000001128A41030000000107800106128A4107000000030000000A128A7D07078000FE128A7D0900000005000000040000000A00000003000000021386710400000002078000F8128A7D0307800106128A410700000003078000FE128A7D090AD357770000000510D100F6022A457B0000000513E1C5040000000208C000F811FC25030640010612FF7107000000030000000A12FFAD0708C000FE0000000500000008000000030000000111FBE90300000001000000080000000000000004128A4109000000040AD357770000000810D100F60000000800000000128A7D07078000FE128A7D090AD357770000000510D100F6022A457B0000000513E1C5040000000208C000F811FC250308C001060000000511FC2507000000050000000300000001000000080000000000000004128A4109000000040AD357770000000810D100F600000008000000000000000300000001128A41030000000107800106128A410700000003078000FE128A7D090AD357770000000810D100F600000008000000000000000400000008128A7D07078000FE128A7D090AD357770000000810D100F600000008000000000000000400000008000000030000000000000004135D4509000000040CFD9BF70F350CF600000000045489FB0000000A000000080F34D0F6045489FB0000000A1386710400000002078000F8128A7D03000000080000000100000008000000000000000300000001135D45030000000105000106135D450700000003050000FE135D81090CFD9BF70F350CF600000000045489FB00000009000000060F34D0F6045489FB00000009000000080000000000000004135D4509000000040CFD9BF7000000080F34D0F60000000800000000135D8107050000FE135D81090CFD9BF70F350CF600000000045489FB1386AD040C9A86F60F878CF700000000028000F80000000A000000080F8750F7000000080000000000000002000000080F34D0F6045489FB1386AD04028000F813D7ED0307800106128A4107000000030000000A128A7D07078000FE128A7D09000000070000000400000008000000030000000113D7B10300000001078001060000000800000008000000021386710400000002028000F813D7ED0307800106000000080000000800000001000000080000000000000004135D4509000000040CFD9BF7000000080F34D0F6000000080000000000000003"
theorem small_721287_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_721287_left_root small_721287_left_fuel small_721287_left_count small_721287_left_encoded = true := by
  decide +kernel
theorem small_721287_left_covered : CoveredBy scale carrier boxes small_721287_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_721287_left_root small_721287_left_fuel small_721287_left_count small_721287_left_encoded small_721287_left_checked

theorem cover_721287 : CoveredBy scale carrier boxes root_721287 := by
  apply coveredBy_split_literal root_721287 small_721287_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0018.root_722075 coord0 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact small_721287_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0018.cover_722075
#print axioms cover_721287

def root_721281 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_721281_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_721281_left_fuel : Nat := 1
def small_721281_left_count : Nat := 1
def small_721281_left_encoded : String := "00000004"
theorem small_721281_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_721281_left_root small_721281_left_fuel small_721281_left_count small_721281_left_encoded = true := by
  decide +kernel
theorem small_721281_left_covered : CoveredBy scale carrier boxes small_721281_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_721281_left_root small_721281_left_fuel small_721281_left_count small_721281_left_encoded small_721281_left_checked

theorem cover_721281 : CoveredBy scale carrier boxes root_721281 := by
  apply coveredBy_split_literal root_721281 small_721281_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.root_721287 coord4 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_721281_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.cover_721287
#print axioms cover_721281

def root_718321 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_718321 : CoveredBy scale carrier boxes root_718321 := by
  apply coveredBy_split_literal root_718321 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0270.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.root_721281 coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0270.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.cover_721281
#print axioms cover_718321

def root_718315 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_718315_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_718315_left_fuel : Nat := 1
def small_718315_left_count : Nat := 1
def small_718315_left_encoded : String := "00000003"
theorem small_718315_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_718315_left_root small_718315_left_fuel small_718315_left_count small_718315_left_encoded = true := by
  decide +kernel
theorem small_718315_left_covered : CoveredBy scale carrier boxes small_718315_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_718315_left_root small_718315_left_fuel small_718315_left_count small_718315_left_encoded small_718315_left_checked

theorem cover_718315 : CoveredBy scale carrier boxes root_718315 := by
  apply coveredBy_split_literal root_718315 small_718315_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.root_718321 coord3 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_718315_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.cover_718321
#print axioms cover_718315

def root_733303 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_733303_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_733303_left_fuel : Nat := 16
def small_733303_left_count : Nat := 109
def small_733303_left_encoded : String := "1152250908A912F712073CF60000000008A912FB12073D0408A913070000000512073D0608A913090000000512073CFE00000004050000F800000005135D4503000000010CFD9BF7000000050F34D0F600000005000000000000000300000002120701040000000208A913070000000712073D0608A913090000000712073CFE00000004050000F8135D81030CFD9BF70F350CF600000000045489FB000000071386710400000002000000070F34D0F6000000070000000000000001135D4503000000010CFD9BF7000000070F34D0F6000000070000000000000003120700F608A912FB12073D0408A913070000000512073D0608A913090000000512073CFE00000004050000F8135D8103045489F700000005138670F60CFD9BFB000000050F34D10400000002000000070000000000000001135D450300000001045489F700000007138670F600000007000000000000000300000002120701040000000208A913070000000712073D0608A913090000000712073CFE00000004050000F8135D8103045489F700000007138670F6000000070000000000000001135D45030000000100000007000000030000000000000004"
theorem small_733303_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_733303_left_root small_733303_left_fuel small_733303_left_count small_733303_left_encoded = true := by
  decide +kernel
theorem small_733303_left_covered : CoveredBy scale carrier boxes small_733303_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_733303_left_root small_733303_left_fuel small_733303_left_count small_733303_left_encoded small_733303_left_checked

theorem cover_733303 : CoveredBy scale carrier boxes root_733303 := by
  apply coveredBy_split_literal root_733303 small_733303_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0274.root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact small_733303_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0274.covered
#print axioms cover_733303

def root_733298 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_733298_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_733298_right_fuel : Nat := 1
def small_733298_right_count : Nat := 1
def small_733298_right_encoded : String := "00000003"
theorem small_733298_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_733298_right_root small_733298_right_fuel small_733298_right_count small_733298_right_encoded = true := by
  decide +kernel
theorem small_733298_right_covered : CoveredBy scale carrier boxes small_733298_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_733298_right_root small_733298_right_fuel small_733298_right_count small_733298_right_encoded small_733298_right_checked

theorem cover_733298 : CoveredBy scale carrier boxes root_733298 := by
  apply coveredBy_split_literal root_733298 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.root_733303 small_733298_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.cover_733303
  · exact small_733298_right_covered
#print axioms cover_733298

def root_718314 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_718314 : CoveredBy scale carrier boxes root_718314 := by
  apply coveredBy_split_literal root_718314 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.root_718315 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.root_733298 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.cover_718315
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.cover_733298
#print axioms cover_718314

def root_718308 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_718308_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_718308_left_fuel : Nat := 1
def small_718308_left_count : Nat := 1
def small_718308_left_encoded : String := "00000002"
theorem small_718308_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_718308_left_root small_718308_left_fuel small_718308_left_count small_718308_left_encoded = true := by
  decide +kernel
theorem small_718308_left_covered : CoveredBy scale carrier boxes small_718308_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_718308_left_root small_718308_left_fuel small_718308_left_count small_718308_left_encoded small_718308_left_checked

theorem cover_718308 : CoveredBy scale carrier boxes root_718308 := by
  apply coveredBy_split_literal root_718308 small_718308_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.root_718314 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_718308_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.cover_718314
#print axioms cover_718308

def root_718182 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_718182_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_718182_left_fuel : Nat := 15
def small_718182_left_count : Nat := 61
def small_718182_left_encoded : String := "1151E8FB0A0001061151E907000000030A0000FE1152250908A912F700000005120700F608A913090000000512073CFE000000040000000500000000000000040000000A115225070A0000FE1152250900000005000000041151E9090000000408A912F712073CF60000000008A913070000000512073D06050000F800000005135D4503000000010500010400000005135D80FB00000002050000FE000000050000000A00000003120700F608A913070000000512073D06050000F800000005135D4503000000010500010400000005135D80FB00000002050000FE000000050000000A00000003000000000000000300000002"
theorem small_718182_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_718182_left_root small_718182_left_fuel small_718182_left_count small_718182_left_encoded = true := by
  decide +kernel
theorem small_718182_left_covered : CoveredBy scale carrier boxes small_718182_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_718182_left_root small_718182_left_fuel small_718182_left_count small_718182_left_encoded small_718182_left_checked

theorem cover_718182 : CoveredBy scale carrier boxes root_718182 := by
  apply coveredBy_split_literal root_718182 small_718182_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.root_718308 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_718182_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.cover_718308
#print axioms cover_718182

def root_718176 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_718176_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_718176_left_fuel : Nat := 1
def small_718176_left_count : Nat := 1
def small_718176_left_encoded : String := "00000001"
theorem small_718176_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_718176_left_root small_718176_left_fuel small_718176_left_count small_718176_left_encoded = true := by
  decide +kernel
theorem small_718176_left_covered : CoveredBy scale carrier boxes small_718176_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_718176_left_root small_718176_left_fuel small_718176_left_count small_718176_left_encoded small_718176_left_checked

theorem cover_718176 : CoveredBy scale carrier boxes root_718176 := by
  apply coveredBy_split_literal root_718176 small_718176_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.root_718182 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_718176_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.cover_718182
#print axioms cover_718176

def root_706436 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_706436 : CoveredBy scale carrier boxes root_706436 := by
  apply coveredBy_split_literal root_706436 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0018.root_706437 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.root_718176 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0018.cover_706437
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.cover_718176
#print axioms cover_706436

def root_706430 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_706430_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_706430_left_fuel : Nat := 1
def small_706430_left_count : Nat := 1
def small_706430_left_encoded : String := "00000000"
theorem small_706430_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_706430_left_root small_706430_left_fuel small_706430_left_count small_706430_left_encoded = true := by
  decide +kernel
theorem small_706430_left_covered : CoveredBy scale carrier boxes small_706430_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_706430_left_root small_706430_left_fuel small_706430_left_count small_706430_left_encoded small_706430_left_checked

theorem cover_706430 : CoveredBy scale carrier boxes root_706430 := by
  apply coveredBy_split_literal root_706430 small_706430_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.root_706436 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_706430_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.cover_706436
#print axioms cover_706430

def root_738311 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_738311_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_738311_left_fuel : Nat := 29
def small_738311_left_count : Nat := 241
def small_738311_left_encoded : String := "1152250908A912FB12073D0408A9130712070106000000030000000712073D0608A91309120700FE000000050000000412073CFE00000004050000F6135D80F700000000050000F800000005135D4503000000010CFD9BFB000000050F34D1040000000200000007135D44F7050000F800000005135D4503000000010CFD9BFB0F350D0400000005000000020F34D104000000020CFD9C070F34D10600000003000000070F350D060CFD9C09000000050F350CFE000000040C9A8706000000050F878D07000000070000000300000003000000000000000300000002120701040000000208A9130712070106000000030000000712073D0608A91309120700FE000000070000000412073CFE00000004050000F6135D80F700000000050000F8135D8103045489FB1386AD040CFD9C07000000050F350D0600000005000000030000000213867104000000020CFD9C07000000070F350D060CFD9C09000000050F350CFE000000040C9A87060F875107000000030C9A86FE000000050F87510900000004078000F600000005128A40F70000000500000000000000070000000300000001135D450300000001045489FB00000007138671040000000200000007135D44F7050000F8135D8103045489FB1386AD040CFD9C070F34D10600000003000000070F350D060CFD9C09000000050F350CFE000000040C9A8706000000050F878D070000000500000003000000030000000213867104000000020CFD9C070F34D10600000003000000070F350D060CFD9C090F34D0FE00000005000000040F350CFE000000040C9A87060F875107000000030C9A86FE0F878D0900000005000000040F87510900000004028000F613D7ECF700000000078000F8000000050000000613D7B0F7078000F80000000500000006000000000F878D070C9A86FE000000070F87510900000004028000F60000000713D7B0F7078000F8128A7D03022A457B0000000513E1C504000000020DE7CA06000000050000000700000001128A410300000001022A457B0000000713E1C504000000020000000700000000000000030000000300000001135D450300000001045489FB1386AD040CFD9C070F34D10600000003000000070F350D060CFD9C090F34D0FE00000005000000040F350CFE000000040C9A87060F875107000000030C9A86FE000000060000000900000007000000030000000213867104000000020CFD9C070F34D10600000003000000070F350D060CFD9C090F34D0FE00000006000000040F350CFE000000040C9A8706000000060F878D07000000070000000300000003000000000000000300000004"
theorem small_738311_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_738311_left_root small_738311_left_fuel small_738311_left_count small_738311_left_encoded = true := by
  decide +kernel
theorem small_738311_left_covered : CoveredBy scale carrier boxes small_738311_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_738311_left_root small_738311_left_fuel small_738311_left_count small_738311_left_encoded small_738311_left_checked

theorem cover_738311 : CoveredBy scale carrier boxes root_738311 := by
  apply coveredBy_split_literal root_738311 small_738311_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0276.root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact small_738311_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0276.covered
#print axioms cover_738311

def root_738306 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_738306_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_738306_right_fuel : Nat := 1
def small_738306_right_count : Nat := 1
def small_738306_right_encoded : String := "00000003"
theorem small_738306_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_738306_right_root small_738306_right_fuel small_738306_right_count small_738306_right_encoded = true := by
  decide +kernel
theorem small_738306_right_covered : CoveredBy scale carrier boxes small_738306_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_738306_right_root small_738306_right_fuel small_738306_right_count small_738306_right_encoded small_738306_right_checked

theorem cover_738306 : CoveredBy scale carrier boxes root_738306 := by
  apply coveredBy_split_literal root_738306 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.root_738311 small_738306_right_root coord3 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.cover_738311
  · exact small_738306_right_covered
#print axioms cover_738306

def root_737912 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_737912_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_737912_left_fuel : Nat := 22
def small_737912_left_count : Nat := 193
def small_737912_left_encoded : String := "1151E907000000030A0000FE1152250908A912FB12073D0408A913090000000512073CFE00000004050000F600000005135D44F7000000050000000000000002120701040000000208A91309120700FE000000050000000412073CFE00000004050000F6135D80F700000000050000F8135D81030500010600000005135D8107045489FB0000000513867104000000020CFD9C09000000050F350CFE000000040C9A86FE000000050F87510900000004078000F600000005128A40F700000005000000000000000300000001135D4503000000010500010600000006135D8107045489FB1386AD040CFD9C090000000500000006000000020000000600000003135D44F7050000F8135D81030500010600000005135D8107045489FB0000000513867104000000020CFD9C0900000005000000060000000300000001135D4503000000010500010600000006135D8107045489FB1386AD040CFD9C09000000050000000600000002000000060000000300000000000000041151E9090000000408A912FB12073D04050000F60000000A135D44F70000000A00000000000000021207010400000002050000F6135D80F700000000050000F8135D8103050001060000000A135D8107050000FE135D8109045489FB0000000A1386710400000002078000F6128A7CF700000000078000F80000000A00000008128A40F7078000F80000000A0000000800000000000000040000000A0000000300000001135D4503000000010500010600000008135D8107050000FE135D8109045489FB1386AD04078000F600000008000000090000000200000006000000040000000800000003135D44F7050000F8135D8103050001060000000A135D8107050000FE135D8109045489FB0000000A1386710400000002028000F613D7ECF700000000078000F80000000A0000000613D7B0F7078000F80000000A0000000600000000000000040000000A0000000300000001135D4503000000010500010600000009135D8107050000FE135D8109045489FB000000060000000600000004000000080000000300000000"
theorem small_737912_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_737912_left_root small_737912_left_fuel small_737912_left_count small_737912_left_encoded = true := by
  decide +kernel
theorem small_737912_left_covered : CoveredBy scale carrier boxes small_737912_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_737912_left_root small_737912_left_fuel small_737912_left_count small_737912_left_encoded small_737912_left_checked

theorem cover_737912 : CoveredBy scale carrier boxes root_737912 := by
  apply coveredBy_split_literal root_737912 small_737912_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.root_738306 coord3 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_737912_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.cover_738306
#print axioms cover_737912

def root_737906 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_737906_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_737906_left_fuel : Nat := 1
def small_737906_left_count : Nat := 1
def small_737906_left_encoded : String := "00000002"
theorem small_737906_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_737906_left_root small_737906_left_fuel small_737906_left_count small_737906_left_encoded = true := by
  decide +kernel
theorem small_737906_left_covered : CoveredBy scale carrier boxes small_737906_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_737906_left_root small_737906_left_fuel small_737906_left_count small_737906_left_encoded small_737906_left_checked

theorem cover_737906 : CoveredBy scale carrier boxes root_737906 := by
  apply coveredBy_split_literal root_737906 small_737906_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.root_737912 coord2 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_737906_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.cover_737912
#print axioms cover_737906

def root_737858 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_737858_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(14529024), (16777216)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_737858_left_fuel : Nat := 10
def small_737858_left_count : Nat := 23
def small_737858_left_encoded : String := "1151E8FB0A00010600000005115225070A0000FE000000051151E9090000000408A913071207010600000003050000F6000000050000000612073D06050000F600000005135D44F70000000A00000000000000030000000300000002"
theorem small_737858_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_737858_left_root small_737858_left_fuel small_737858_left_count small_737858_left_encoded = true := by
  decide +kernel
theorem small_737858_left_covered : CoveredBy scale carrier boxes small_737858_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_737858_left_root small_737858_left_fuel small_737858_left_count small_737858_left_encoded small_737858_left_checked

theorem cover_737858 : CoveredBy scale carrier boxes root_737858 := by
  apply coveredBy_split_literal root_737858 small_737858_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.root_737906 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_737858_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.cover_737906
#print axioms cover_737858

def root_737852 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_737852_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (14529024)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_737852_left_fuel : Nat := 1
def small_737852_left_count : Nat := 1
def small_737852_left_encoded : String := "00000001"
theorem small_737852_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_737852_left_root small_737852_left_fuel small_737852_left_count small_737852_left_encoded = true := by
  decide +kernel
theorem small_737852_left_covered : CoveredBy scale carrier boxes small_737852_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_737852_left_root small_737852_left_fuel small_737852_left_count small_737852_left_encoded small_737852_left_checked

theorem cover_737852 : CoveredBy scale carrier boxes root_737852 := by
  apply coveredBy_split_literal root_737852 small_737852_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.root_737858 coord1 true (14529024)
  · decide +kernel
  · decide +kernel
  · exact small_737852_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.cover_737858
#print axioms cover_737852

def root_736624 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_736624 : CoveredBy scale carrier boxes root_736624 := by
  apply coveredBy_split_literal root_736624 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0275.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.root_737852 coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0275.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.cover_737852
#print axioms cover_736624

def root_736619 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_736619_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-14529024), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_736619_right_fuel : Nat := 1
def small_736619_right_count : Nat := 1
def small_736619_right_encoded : String := "00000000"
theorem small_736619_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_736619_right_root small_736619_right_fuel small_736619_right_count small_736619_right_encoded = true := by
  decide +kernel
theorem small_736619_right_covered : CoveredBy scale carrier boxes small_736619_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_736619_right_root small_736619_right_fuel small_736619_right_count small_736619_right_encoded small_736619_right_checked

theorem cover_736619 : CoveredBy scale carrier boxes root_736619 := by
  apply coveredBy_split_literal root_736619 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.root_736624 small_736619_right_root coord0 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.cover_736624
  · exact small_736619_right_covered
#print axioms cover_736619

def root_706429 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_706429 : CoveredBy scale carrier boxes root_706429 := by
  apply coveredBy_split_literal root_706429 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.root_706430 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.root_736619 coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.cover_706430
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.cover_736619
#print axioms cover_706429

def root_705227 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_705227 : CoveredBy scale carrier boxes root_705227 := by
  apply coveredBy_split_literal root_705227 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0264.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.root_706429 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0264.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.cover_706429
#print axioms cover_705227

def root_743859 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_743859 : CoveredBy scale carrier boxes root_743859 := by
  apply coveredBy_split_literal root_743859 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0278.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0279.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0278.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0279.covered
#print axioms cover_743859

def root_743853 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_743853_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_743853_left_fuel : Nat := 1
def small_743853_left_count : Nat := 1
def small_743853_left_encoded : String := "00000000"
theorem small_743853_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_743853_left_root small_743853_left_fuel small_743853_left_count small_743853_left_encoded = true := by
  decide +kernel
theorem small_743853_left_covered : CoveredBy scale carrier boxes small_743853_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_743853_left_root small_743853_left_fuel small_743853_left_count small_743853_left_encoded small_743853_left_checked

theorem cover_743853 : CoveredBy scale carrier boxes root_743853 := by
  apply coveredBy_split_literal root_743853 small_743853_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.root_743859 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_743853_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.cover_743859
#print axioms cover_743853

def root_743852 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_743852 : CoveredBy scale carrier boxes root_743852 := by
  apply coveredBy_split_literal root_743852 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.root_743853 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0280.root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.cover_743853
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0280.covered
#print axioms cover_743852

def root_741508 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_741508 : CoveredBy scale carrier boxes root_741508 := by
  apply coveredBy_split_literal root_741508 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0277.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.root_743852 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0277.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.cover_743852
#print axioms cover_741508

def root_705226 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_705226 : CoveredBy scale carrier boxes root_705226 := by
  apply coveredBy_split_literal root_705226 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.root_705227 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.root_741508 coord4 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.cover_705227
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.cover_741508
#print axioms cover_705226

def root_690618 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_690618 : CoveredBy scale carrier boxes root_690618 := by
  apply coveredBy_split_literal root_690618 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0018.root_690619 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.root_705226 coord3 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0018.cover_690619
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.cover_705226
#print axioms cover_690618

def root_619974 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩, ⟨⟨(-16777216), (16777216)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_619974 : CoveredBy scale carrier boxes root_619974 := by
  apply coveredBy_split_literal root_619974 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0018.root_619975 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.root_690618 coord3 false (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0018.cover_619975
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.cover_690618
#print axioms cover_619974

def root_749624 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_749624 : CoveredBy scale carrier boxes root_749624 := by
  apply coveredBy_split_literal root_749624 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0281.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0282.root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0281.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0282.covered
#print axioms cover_749624

def root_749618 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_749618_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_749618_left_fuel : Nat := 1
def small_749618_left_count : Nat := 1
def small_749618_left_encoded : String := "00000003"
theorem small_749618_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_749618_left_root small_749618_left_fuel small_749618_left_count small_749618_left_encoded = true := by
  decide +kernel
theorem small_749618_left_covered : CoveredBy scale carrier boxes small_749618_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_749618_left_root small_749618_left_fuel small_749618_left_count small_749618_left_encoded small_749618_left_checked

theorem cover_749618 : CoveredBy scale carrier boxes root_749618 := by
  apply coveredBy_split_literal root_749618 small_749618_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.root_749624 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_749618_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.cover_749624
#print axioms cover_749618

def root_749617 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_749617_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_749617_right_fuel : Nat := 29
def small_749617_right_count : Nat := 333
def small_749617_right_encoded : String := "1151E8FD0A0000FE115224FF0000000408A912F712073CF60000000008A91303120700F808A91305120701040000000208A912FF12073CFE00000004050000FC135D80FD000000030CFD9BF70F350CF60000000004548A03138670F804548A0513867104000000020CFD9BFF0000000A0F34D0FE0C9A86F6000000070000000A000000040000000A000000011386ACF80000000104548A0513867104000000020CFD9BFF000000070F34D0FE00000007000000040000000A0F34D0F60000000A00000000135D44FD0CFD9BF70F350CF6000000000000000A0000000A00000003120700FE050000FC135D80FD000000030CFD9BF70F350CF60000000004548A03138670F804548A051386710400000002045489FF1386ACFE000000040C9A86F6000000070F8750F7078000FC128A7CFD00000003022A458313E1C4F8022A4585000000070000000500000001000000050000000700000000000000051386AD04045489FF0000000A0000000500000002000000011386ACF800000001000000050F34D0F604548A03138670F804548A051386710400000002045489FF000000070000000500000005000000010000000500000000135D44FD0CFD9BF70F350CF60000000004548A03138670F804548A050000000700000005000000010000000500000005000000030000000412073D0408A912FF0000000A120700FE050000FC135D80FD000000030CFD9BF70F350CF60000000004548A03138670F80CFD9C050F34D10400000002000000050000000500000001000000050000000A0000000A00000004000000020000000112073CF80000000108A91305120701040000000208A912FF12073CFE00000004050000FC135D80FD000000030CFD9BF70F350CF6000000000CFD9C030F34D0F804548A050000000700000005000000010000000500000005000000070000000512073D0408A912FF0000000A0000000500000002120700F608A91303120700F808A91305120701040000000208A912FF0000000A120700FE0000000A000000040000000A0000000112073CF80000000108A9130512070104000000020000000500000005000000001151E8FF08A912F712073CF60000000008A91303120700F808A913051207010400000002050000FC135D80FD00000003050000FE135D80FF000000040CFD9BF70F350CF60000000004548A030000000A1386ACF8000000010000000A0000000A135D44FF0CFD9BF70F350CF60000000004548A03138670F804548A0513867104000000020C9A86F60000000A0000000A0000000A000000011386ACF80000000104548A0513867104000000020C9A86F60F878CF7000000000000000A0F8750F7078000FC128A7CFD00000003028000FE0000000A13D7B0FF067ECE830000000A0000000A000000040000000A000000000000000A0F34D0F60000000A0000000000000004135D44FD050000FE0000000A135D44FF0000000A000000040000000312073D04050000FC135D80FD000000030000000A0000000A000000020000000112073CF80000000108A913051207010400000002050000FC135D80FD00000003050000FE135D80FF000000040CFD9BF70F350CF6000000000CFD9C030000000A0000000500000005135D44FF0CFD9BF70F350CF6000000000CFD9C030F34D0F804548A0513867104000000020C9A86F6000000050F8750F700000007000000000000000500000001000000050000000500000004135D44FD050000FE00000007135D44FF0CFD9BF70000000700000005000000040000000300000005120700F608A913030000000A12073CF80000000100000005000000000000000400000003"
theorem small_749617_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_749617_right_root small_749617_right_fuel small_749617_right_count small_749617_right_encoded = true := by
  decide +kernel
theorem small_749617_right_covered : CoveredBy scale carrier boxes small_749617_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_749617_right_root small_749617_right_fuel small_749617_right_count small_749617_right_encoded small_749617_right_checked

theorem cover_749617 : CoveredBy scale carrier boxes root_749617 := by
  apply coveredBy_split_literal root_749617 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.root_749618 small_749617_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.cover_749618
  · exact small_749617_right_covered
#print axioms cover_749617

def root_749612 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_749612_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_749612_right_fuel : Nat := 1
def small_749612_right_count : Nat := 1
def small_749612_right_encoded : String := "00000002"
theorem small_749612_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_749612_right_root small_749612_right_fuel small_749612_right_count small_749612_right_encoded = true := by
  decide +kernel
theorem small_749612_right_covered : CoveredBy scale carrier boxes small_749612_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_749612_right_root small_749612_right_fuel small_749612_right_count small_749612_right_encoded small_749612_right_checked

theorem cover_749612 : CoveredBy scale carrier boxes root_749612 := by
  apply coveredBy_split_literal root_749612 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.root_749617 small_749612_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.cover_749617
  · exact small_749612_right_covered
#print axioms cover_749612

def root_749182 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_749182_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_749182_left_fuel : Nat := 18
def small_749182_left_count : Nat := 201
def small_749182_left_encoded : String := "1151E905000000020A0000FC115224FD000000030A0000FE115224FF0000000408A912F712073CF60000000008A91303120700F808A912FD12073CFC0000000308A912FF12073CFE00000004050001040000000A0000000A120700FE050001040000000A135D81050CFD9BF70F350CF600000000000000060000000A0000000200000004120700FC08A912FF12073CFE0000000405000104135D4505000000020CFD9BF70000000600000007135D81050CFD9BF70F350CF600000000000000060F34D0F60000000A0000000000000002120700FE0000000700000004000000030000000112073CF80000000108A912FD12073CFC0000000308A912FF00000006120700FE0000000600000004120700FC08A912FF00000006120700FE000000060000000400000003120700F608A91303120700F808A912FD0000000A0000000A0000000112073CF80000000108A912FD12073CFC0000000308A912FF12073CFE0000000405000104000000060000000A0000000A120700FC08A912FF12073CFE0000000405000104135D45050000000200000006135D8105045489F71386ACF6000000000000000A0000000A00000002120700FE0000000A0000000400000003000000001151E8FF08A912F712073CF60000000008A91303120700F808A912FD12073CFC000000030500010400000006135D8105050000FE00000006135D44FF000000060000000400000002120700FC05000104135D45050000000200000006135D8105050000FE135D80FF000000040CFD9BF7000000060F34D0F600000007000000000000000500000002000000030000000112073CF80000000108A912FD00000006120700FC0000000600000003120700F608A91303120700F808A912FD0000000A120700FC00000007000000030000000112073CF80000000108A912FD00000006120700FC0500010400000006000000050000000300000000000000041151E8FD0A0000FE115224FF0000000408A912F712073CF60000000008A913030000000A0000000A0000000A1151E8FF08A912F712073CF60000000008A913030000000A00000006120700F608A913030000000A00000005000000000000000400000003"
theorem small_749182_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_749182_left_root small_749182_left_fuel small_749182_left_count small_749182_left_encoded = true := by
  decide +kernel
theorem small_749182_left_covered : CoveredBy scale carrier boxes small_749182_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_749182_left_root small_749182_left_fuel small_749182_left_count small_749182_left_encoded small_749182_left_checked

theorem cover_749182 : CoveredBy scale carrier boxes root_749182 := by
  apply coveredBy_split_literal root_749182 small_749182_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.root_749612 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_749182_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.cover_749612
#print axioms cover_749182

def root_749177 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_749177_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_749177_right_fuel : Nat := 1
def small_749177_right_count : Nat := 1
def small_749177_right_encoded : String := "00000001"
theorem small_749177_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_749177_right_root small_749177_right_fuel small_749177_right_count small_749177_right_encoded = true := by
  decide +kernel
theorem small_749177_right_covered : CoveredBy scale carrier boxes small_749177_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_749177_right_root small_749177_right_fuel small_749177_right_count small_749177_right_encoded small_749177_right_checked

theorem cover_749177 : CoveredBy scale carrier boxes root_749177 := by
  apply coveredBy_split_literal root_749177 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.root_749182 small_749177_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.cover_749182
  · exact small_749177_right_covered
#print axioms cover_749177

def root_749176 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_749176_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_749176_right_fuel : Nat := 16
def small_749176_right_count : Nat := 101
def small_749176_right_encoded : String := "1151E903000000010A0001041151E905000000020A0000FC115224FD000000030A0000FE115224FF0000000408A912F712073CF60000000008A912FD12073CFC0000000308A912FF0000000600000006120700FC0000000600000003120700F608A912FD12073CFC0000000308A912FF00000006120700FE0000000600000004120700FC08A912FF00000006120700FE000000060000000400000003000000001151E8FF00000005000000041151E8FD0000000500000003115225050A0000FC115224FD000000030A0000FE115224FF0000000408A912F712073CF60000000008A9130512070104000000020000000500000005120700F608A9130512070104000000020000000512073D0408A912FD12073CFC0000000300000005120700FC08A912FF12073CFE0000000400000005120700FE0000000A00000004000000030000000200000000000000051151E8FD0A0000FE115224FF00000004000000051151E8FF08A912F712073CF60000000008A913051207010400000002000000070000000500000005000000040000000300000002"
theorem small_749176_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_749176_right_root small_749176_right_fuel small_749176_right_count small_749176_right_encoded = true := by
  decide +kernel
theorem small_749176_right_covered : CoveredBy scale carrier boxes small_749176_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_749176_right_root small_749176_right_fuel small_749176_right_count small_749176_right_encoded small_749176_right_checked

theorem cover_749176 : CoveredBy scale carrier boxes root_749176 := by
  apply coveredBy_split_literal root_749176 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.root_749177 small_749176_right_root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.cover_749177
  · exact small_749176_right_covered
#print axioms cover_749176

def root_749170 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_749170_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_749170_left_fuel : Nat := 1
def small_749170_left_count : Nat := 1
def small_749170_left_encoded : String := "00000000"
theorem small_749170_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_749170_left_root small_749170_left_fuel small_749170_left_count small_749170_left_encoded = true := by
  decide +kernel
theorem small_749170_left_covered : CoveredBy scale carrier boxes small_749170_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_749170_left_root small_749170_left_fuel small_749170_left_count small_749170_left_encoded small_749170_left_checked

theorem cover_749170 : CoveredBy scale carrier boxes root_749170 := by
  apply coveredBy_split_literal root_749170 small_749170_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.root_749176 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_749170_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.cover_749176
#print axioms cover_749170

def root_749169 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_749169 : CoveredBy scale carrier boxes root_749169 := by
  apply coveredBy_split_literal root_749169 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.root_749170 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0283.root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.cover_749170
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0283.covered
#print axioms cover_749169

def root_757915 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_757915_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_757915_right_fuel : Nat := 21
def small_757915_right_count : Nat := 221
def small_757915_right_encoded : String := "1151E9090000000408A912F712073CF60000000008A91303120700F808A913050000000512073D0408A912FD00000005120700FC0000000700000003000000020000000112073CF80000000108A9130512070104000000020000000512073D0408A912FD12073CFC00000003050000FE135D81090CFD9BF7000000050F34D0F60CFD9C030000000500000008000000000000000400000005120700FC050000FE135D81090CFD9BF70F350CF6000000000CFD9C0300000007000000080F34D0F60CFD9C030F34D0F800000007000000010F350CF800000001000000080000000000000004135D4509000000040CFD9BF7000000070F34D0F60CFD9C03000000070F350CF80000000100000008000000000000000300000002120700F608A91303120700F808A91305120701040000000208A912FD00000005120700FC050000FE135D81090000000500000004000000050000000312073D0408A912FD00000009120700FC050000FE135D8109045489F70000000700000007000000040000000700000003000000020000000112073CF80000000108A91305120701040000000208A912FD00000005120700FC050000FE135D8109045489F71386ACF6000000000CFD9C03000000050F350CF80000000100000005138670F60CFD9C030F34D0F800000009000000010F350CF80000000104548A051386710400000002000000051386AD04045489FD00000008138670FC0C9A86F8000000090000000800000003000000020000000000000004135D450900000004045489F700000005138670F600000009000000000000000312073D0408A912FD12073CFC00000003050000FE135D8109045489F700000009000000090000000400000009120700FC050000FE135D8109045489F71386ACF6000000000CFD9C030F34D0F80CFD9C050F34D104000000020000000700000007000000010F350CF8000000010CFD9C050F34D10400000002045489FD00000008000000080F350D04045489FD000000080000000700000002138670F60CFD9C030F34D0F800000009000000010F350CF8000000010CFD9C050F34D1040000000200000009000000090000000000000004135D450900000004045489F71386ACF6000000000CFD9C030F34D0F800000007000000010F350CF8000000010CFD9C050000000800000007138670F60CFD9C03000000090000000900000000000000030000000200000000"
theorem small_757915_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_757915_right_root small_757915_right_fuel small_757915_right_count small_757915_right_encoded = true := by
  decide +kernel
theorem small_757915_right_covered : CoveredBy scale carrier boxes small_757915_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_757915_right_root small_757915_right_fuel small_757915_right_count small_757915_right_encoded small_757915_right_checked

theorem cover_757915 : CoveredBy scale carrier boxes root_757915 := by
  apply coveredBy_split_literal root_757915 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0284.root small_757915_right_root coord4 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0284.covered
  · exact small_757915_right_covered
#print axioms cover_757915

def root_757909 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_757909_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_757909_left_fuel : Nat := 1
def small_757909_left_count : Nat := 1
def small_757909_left_encoded : String := "00000003"
theorem small_757909_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_757909_left_root small_757909_left_fuel small_757909_left_count small_757909_left_encoded = true := by
  decide +kernel
theorem small_757909_left_covered : CoveredBy scale carrier boxes small_757909_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_757909_left_root small_757909_left_fuel small_757909_left_count small_757909_left_encoded small_757909_left_checked

theorem cover_757909 : CoveredBy scale carrier boxes root_757909 := by
  apply coveredBy_split_literal root_757909 small_757909_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.root_757915 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_757909_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.cover_757915
#print axioms cover_757909

def root_757908 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_757908_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_757908_right_fuel : Nat := 15
def small_757908_right_count : Nat := 45
def small_757908_right_encoded : String := "1151E8FD0A0000FE1152250908A912F712073CF60000000008A91303120700F808A91305120701040000000200000005000000050000000100000005120700F608A91303120700F808A91305120701040000000200000005000000050000000112073CF80000000108A913050000000512073D0408A913090000000512073CFE00000004050000FC135D80FD00000003045489F70000000500000009000000050000000200000000000000040000000500000003"
theorem small_757908_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_757908_right_root small_757908_right_fuel small_757908_right_count small_757908_right_encoded = true := by
  decide +kernel
theorem small_757908_right_covered : CoveredBy scale carrier boxes small_757908_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_757908_right_root small_757908_right_fuel small_757908_right_count small_757908_right_encoded small_757908_right_checked

theorem cover_757908 : CoveredBy scale carrier boxes root_757908 := by
  apply coveredBy_split_literal root_757908 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.root_757909 small_757908_right_root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.cover_757909
  · exact small_757908_right_covered
#print axioms cover_757908

def root_757903 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_757903_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_757903_right_fuel : Nat := 1
def small_757903_right_count : Nat := 1
def small_757903_right_encoded : String := "00000002"
theorem small_757903_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_757903_right_root small_757903_right_fuel small_757903_right_count small_757903_right_encoded = true := by
  decide +kernel
theorem small_757903_right_covered : CoveredBy scale carrier boxes small_757903_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_757903_right_root small_757903_right_fuel small_757903_right_count small_757903_right_encoded small_757903_right_checked

theorem cover_757903 : CoveredBy scale carrier boxes root_757903 := by
  apply coveredBy_split_literal root_757903 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.root_757908 small_757903_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.cover_757908
  · exact small_757903_right_covered
#print axioms cover_757903

def root_757053 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_757053_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_757053_left_fuel : Nat := 24
def small_757053_left_count : Nat := 397
def small_757053_left_encoded : String := "1151E905000000020A0000FC115224FD000000030A0000FE1152250908A912F712073CF60000000008A91303120700F808A912FD12073CFC0000000308A91309120700FE05000104135D4505000000020CFD9BF70F350CF600000000000000070F34D0F60000000A00000000135D81050CFD9BF70F350CF60000000004548A0300000007000000060F34D0F604548A03000000090000000A00000000000000020000000412073CFE0000000405000104135D4505000000020CFD9BF70000000900000009135D81050CFD9BF7000000090F34D0F6000000090000000000000002120700FC08A913090000000700000007000000030000000112073CF80000000108A912FD12073CFC0000000308A91309120700FE05000104135D4505000000020CFD9BF7000000060000000A135D81050CFD9BF70F350CF600000000000000060F34D0F60000000A00000000000000020000000412073CFE0000000405000104135D4505000000020CFD9BF70F350CF600000000000000080F34D0F60CFD9C030F34D0F800000008000000010000000800000000135D81050CFD9BF70F350CF6000000000CFD9C030F34D0F80000000800000001000000080F34D0F60CFD9C030F34D0F800000009000000010F350CF800000001000000080000000000000002120700FC08A91309120700FE0500010400000006000000060000000412073CFE0000000405000104135D4505000000020CFD9BF7000000070F34D0F60CFD9C03000000070F350CF800000001045489FD000000060000000600000000135D81050CFD9BF70F350CF6000000000CFD9C0300000007000000060F34D0F60CFD9C030F34D0F800000007000000010F350CF800000001045489FD0000000600000006000000000000000200000003120700F608A91303120700F808A912FD12073CFC0000000308A91309120700FE0000000A0000000412073CFE00000004050001040000000900000009120700FC08A913090000000712073CFE00000004050001040000000700000007000000030000000112073CF80000000108A912FD12073CFC0000000308A91309120700FE0000000A0000000412073CFE0000000405000104135D450500000002045489F71386ACF6000000000CFD9C030000000A0F350CF800000001000000080000000A135D8105045489F71386ACF6000000000CFD9C030F34D0F800000009000000010F350CF8000000010CFD9BFD000000080000000A138670F60CFD9C030000000A0000000A0000000000000002120700FC08A91309120700FE050001040000000A0000000A0000000412073CFE0000000405000104135D450500000002045489F71386ACF6000000000CFD9C030F34D0F800000007000000010F350CF800000001045489FD0000000A00000007138670F60CFD9C030000000A0F350CF8000000010000000A00000000135D8105045489F71386ACF6000000000CFD9C030F34D0F800000007000000010F350CF800000001045489FD1386ACFC000000030CFD9C090000000A00000008138670FC0CFD9C09000000070F350CFE000000040000000700000003138670F60CFD9C030F34D0F8045489FD0000000A00000007000000010F350CF800000001045489FD0000000A0000000A00000000000000020000000300000000000000041151E9090000000408A912F712073CF60000000008A91303120700F8000000070000000112073CF80000000108A912FD12073CFC0000000305000104135D450500000002050000FE135D81090CFD9BF700000009000000080000000400000009135D8105050000FE00000008135D4509000000040000000900000002120700FC0000000700000003120700F608A91303120700F8000000090000000112073CF80000000108A912FD12073CFC0000000300000009120700FC05000104135D45050000000200000007135D8105050000FE135D8109045489F7000000070000000700000004000000070000000200000003000000001151E8FD0A0000FE1152250908A912F712073CF60000000008A91303120700F808A91309120700FE0000000900000004000000080000000112073CF80000000108A91309120700FE000000080000000400000008120700F608A91303120700F800000009000000010000000A00000000000000041151E9090000000408A912F7000000090000000900000003"
theorem small_757053_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_757053_left_root small_757053_left_fuel small_757053_left_count small_757053_left_encoded = true := by
  decide +kernel
theorem small_757053_left_covered : CoveredBy scale carrier boxes small_757053_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_757053_left_root small_757053_left_fuel small_757053_left_count small_757053_left_encoded small_757053_left_checked

theorem cover_757053 : CoveredBy scale carrier boxes root_757053 := by
  apply coveredBy_split_literal root_757053 small_757053_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.root_757903 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_757053_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.cover_757903
#print axioms cover_757053

def root_757048 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_757048_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_757048_right_fuel : Nat := 1
def small_757048_right_count : Nat := 1
def small_757048_right_encoded : String := "00000001"
theorem small_757048_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_757048_right_root small_757048_right_fuel small_757048_right_count small_757048_right_encoded = true := by
  decide +kernel
theorem small_757048_right_covered : CoveredBy scale carrier boxes small_757048_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_757048_right_root small_757048_right_fuel small_757048_right_count small_757048_right_encoded small_757048_right_checked

theorem cover_757048 : CoveredBy scale carrier boxes root_757048 := by
  apply coveredBy_split_literal root_757048 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.root_757053 small_757048_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.cover_757053
  · exact small_757048_right_covered
#print axioms cover_757048

def root_757047 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_757047 : CoveredBy scale carrier boxes root_757047 := by
  apply coveredBy_split_literal root_757047 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.root_757048 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0285.root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.cover_757048
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0285.covered
#print axioms cover_757047

def root_757041 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_757041_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_757041_left_fuel : Nat := 1
def small_757041_left_count : Nat := 1
def small_757041_left_encoded : String := "00000000"
theorem small_757041_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_757041_left_root small_757041_left_fuel small_757041_left_count small_757041_left_encoded = true := by
  decide +kernel
theorem small_757041_left_covered : CoveredBy scale carrier boxes small_757041_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_757041_left_root small_757041_left_fuel small_757041_left_count small_757041_left_encoded small_757041_left_checked

theorem cover_757041 : CoveredBy scale carrier boxes root_757041 := by
  apply coveredBy_split_literal root_757041 small_757041_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.root_757047 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_757041_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.cover_757047
#print axioms cover_757041

def root_757040 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_757040_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_757040_right_fuel : Nat := 21
def small_757040_right_count : Nat := 155
def small_757040_right_encoded : String := "1151E8F70A0000F8115225030A0001041151E905000000020A0000FC115224FD000000030A0000FE1152250908A91303120700F808A912FD12073CFC0000000308A91309120700FE000000060000000400000007120700FC00000007000000030000000112073CF80000000108A912FD12073CFC0000000308A91309120700FE000000060000000400000008120700FC08A91309000000060000000600000003000000041151E90900000004000000071151E8FD0000000500000003115225050A0000FC115224FD000000030A0000FE1152250908A91303120700F808A91305120701040000000208A912FD12073CFC00000003000000050000000512073D0408A912FD12073CFC000000030000000500000005000000020000000112073CF80000000108A913050000000512073D0408A912FD00000005120700FC08A913090000000512073CFE00000004050000F6135D80F7000000000CFD9C03000000050000000600000005000000030000000200000004000000051151E8FD0A0000FE1152250908A91303120700F808A91305120701040000000200000005000000050000000100000005000000041151E90900000004000000050000000300000002000000011151E903000000010A0001041151E905000000020A0000FC115224FD000000030A0000FE1152250908A912FD0000000600000006000000041151E9090000000408A912FD00000005000000071151E8FD0000000500000003115225050A0000FC115224FD000000030A0000FE1152250900000005000000041151E9090000000408A913050000000512073D0400000005000000021151E8FD00000005000000030000000200000000"
theorem small_757040_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_757040_right_root small_757040_right_fuel small_757040_right_count small_757040_right_encoded = true := by
  decide +kernel
theorem small_757040_right_covered : CoveredBy scale carrier boxes small_757040_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_757040_right_root small_757040_right_fuel small_757040_right_count small_757040_right_encoded small_757040_right_checked

theorem cover_757040 : CoveredBy scale carrier boxes root_757040 := by
  apply coveredBy_split_literal root_757040 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.root_757041 small_757040_right_root coord0 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.cover_757041
  · exact small_757040_right_covered
#print axioms cover_757040

def root_749168 : ZRayBox := fun j => (#[⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (16777216)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_749168 : CoveredBy scale carrier boxes root_749168 := by
  apply coveredBy_split_literal root_749168 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.root_749169 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.root_757040 coord4 true (0)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.cover_749169
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.cover_757040
#print axioms cover_749168

def root_763320 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_763320 : CoveredBy scale carrier boxes root_763320 := by
  apply coveredBy_split_literal root_763320 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0286.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0287.root coord3 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0286.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0287.covered
#print axioms cover_763320

def root_763315 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_763315_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_763315_right_fuel : Nat := 1
def small_763315_right_count : Nat := 1
def small_763315_right_encoded : String := "00000002"
theorem small_763315_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_763315_right_root small_763315_right_fuel small_763315_right_count small_763315_right_encoded = true := by
  decide +kernel
theorem small_763315_right_covered : CoveredBy scale carrier boxes small_763315_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_763315_right_root small_763315_right_fuel small_763315_right_count small_763315_right_encoded small_763315_right_checked

theorem cover_763315 : CoveredBy scale carrier boxes root_763315 := by
  apply coveredBy_split_literal root_763315 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.root_763320 small_763315_right_root coord2 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.cover_763320
  · exact small_763315_right_covered
#print axioms cover_763315

def root_763207 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_763207_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_763207_left_fuel : Nat := 15
def small_763207_left_count : Nat := 51
def small_763207_left_encoded : String := "1151E905000000020A0000FC115224FD000000030A0001081151E8FF08A912F712073CF60000000008A91303120700F808A912FD12073CFC0000000305000104135D45050000000205000108000000060000000500000005000000050000000100000005120700F608A91303120700F808A912FD12073CFC00000003000000050000000500000001000000050000000000000004000000051151E8FD0A0001081151E8FF08A912F712073CF600000000000000050000000500000004115224FF000000040000000500000003"
theorem small_763207_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_763207_left_root small_763207_left_fuel small_763207_left_count small_763207_left_encoded = true := by
  decide +kernel
theorem small_763207_left_covered : CoveredBy scale carrier boxes small_763207_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_763207_left_root small_763207_left_fuel small_763207_left_count small_763207_left_encoded small_763207_left_checked

theorem cover_763207 : CoveredBy scale carrier boxes root_763207 := by
  apply coveredBy_split_literal root_763207 small_763207_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.root_763315 coord2 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact small_763207_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.cover_763315
#print axioms cover_763207

def root_763202 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_763202_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(14529792), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_763202_right_fuel : Nat := 1
def small_763202_right_count : Nat := 1
def small_763202_right_encoded : String := "00000001"
theorem small_763202_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_763202_right_root small_763202_right_fuel small_763202_right_count small_763202_right_encoded = true := by
  decide +kernel
theorem small_763202_right_covered : CoveredBy scale carrier boxes small_763202_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_763202_right_root small_763202_right_fuel small_763202_right_count small_763202_right_encoded small_763202_right_checked

theorem cover_763202 : CoveredBy scale carrier boxes root_763202 := by
  apply coveredBy_split_literal root_763202 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.root_763207 small_763202_right_root coord1 true (14529792)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.cover_763207
  · exact small_763202_right_covered
#print axioms cover_763202

def root_763201 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_763201_right_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(-8388608), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_763201_right_fuel : Nat := 37
def small_763201_right_count : Nat := 415
def small_763201_right_encoded : String := "1151E903000000010A0001041151E905000000020A0000FC115224FD000000030A0001081151E8FF0000000500000004115224FF0000000408A912F700000005120700F600000005000000001151E8FD0000000500000003115225050A0000FC115224FD000000030A00010800000005115224FF0000000408A912F712073CF60000000008A91305120701040000000208A912FD12073CFC0000000308A912FF12073D08050000F800000005135D4503000000010CFD9BF70F350CF60000000004548A0513867104000000020CFD9BFD0F350CFC000000030CFD9BFF0F350D0800000005000000040000000500000005000000050000000500000004000000050000000512073D040000000500000002120700F608A913050000000512073D040000000500000002000000001151E8FD0A0001081151E8FF08A912F712073CF60000000008A913051207010400000002050000F8135D8103050000FC135D80FD000000030500010800000005135D80FF000000040CFD9BF70F350CF60000000004548A0513867104000000020C9A86F6000000050F8750F7078000F800000005128A41030000000100000005000000000000000500000005135D44FD0500010800000007135D80FF000000040CFD9BF7000000070F34D0F600000005000000000000000300000001135D450300000001050000FC135D80FD000000030500010800000005135D80FF000000040CFD9BF70F350CF60000000004548A051386710400000002000000070000000500000005135D44FD0500010800000007135D80FF000000040CFD9BF7000000070F34D0F600000005000000000000000312073D04050000F800000005135D4503000000010000000500000002120700F6000000050000000000000004115224FF0000000408A912F712073CF60000000008A91305120701040000000208A912FF12073D08050000F8135D8103050000FC135D80FD000000030CFD9BF70F350CF60000000004548A0513867104000000020CFD9BFF0F350D080C9A86F6000000090F8750F70C9A87080F8750FF078000F800000005128A4103000000010000000500000004000000090000000000000004000000091386AD040CFD9BFF0F350D08000000050000000400000005000000020F34D0F60000000500000000135D44FD0CFD9BF70F350CF60000000004548A0513867104000000020000000900000009000000090000000300000001135D450300000001050000FC135D80FD000000030CFD9BF70F350CF60000000004548A0513867104000000020CFD9BFF0F350D080C9A86F60F878CF7000000000C9A870800000005000000090F8750F70C9A87080F8750FF028000F813D7ED03078000FC00000005000000070000000113D7B10300000001078000FC0000000500000007000000040F878CFF00000004028000F80000000913D7B10300000001078000FC128A7CFD00000003022A458513E1C504000000020B4D43F600000005108010F70DE7CA0800000005000000090000000000000005128A40FD022A458513E1C5040000000200000009000000090000000300000000000000040F34D10800000004000000091386AD040CFD9BFF0F350D080C9A86F6000000050F8750F70C9A8708000000050F878CFF000000040000000500000000000000040F34D1080000000400000009000000020F34D0F60000000500000000135D44FD0CFD9BF70F350CF60000000004548A0513867104000000020CFD9BFF0F350D080C9A86F6000000070F8750F70000000700000000000000040F34D10800000004000000091386AD040CFD9BFF0F350D080C9A86F6000000090F8750F70C9A87080000000A0000000900000000000000040F34D1080000000400000009000000020F34D0F60000000900000000000000030000000412070108000000040000000912073D0408A912FF12073D08050000F8135D8103050000FC00000005135D44FD0CFD9BF70F350CF6000000000CFD9C050F34D104000000020000000900000005000000050000000300000001135D450300000001050000FC00000005135D44FD0CFD9BF70F350CF6000000000CFD9C050F34D104000000020CFD9BFF0F350D080C9A86F6000000050F8750F70C9A8708000000050F878CFF000000040000000900000000000000040F34D10800000004000000090F350D0400000005000000020F34D0F60000000500000000000000030000000412070108000000040000000900000002120700F608A9130512070104000000020000000900000005000000000000000300000002"
theorem small_763201_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_763201_right_root small_763201_right_fuel small_763201_right_count small_763201_right_encoded = true := by
  decide +kernel
theorem small_763201_right_covered : CoveredBy scale carrier boxes small_763201_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_763201_right_root small_763201_right_fuel small_763201_right_count small_763201_right_encoded small_763201_right_checked

theorem cover_763201 : CoveredBy scale carrier boxes root_763201 := by
  apply coveredBy_split_literal root_763201 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.root_763202 small_763201_right_root coord1 false (-8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.cover_763202
  · exact small_763201_right_covered
#print axioms cover_763201

def root_763195 : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_763195_left_root : ZRayBox := fun j => (#[⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(0), (16777216)⟩⟩, ⟨⟨(-16777216), (0)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_763195_left_fuel : Nat := 1
def small_763195_left_count : Nat := 1
def small_763195_left_encoded : String := "00000000"
theorem small_763195_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_763195_left_root small_763195_left_fuel small_763195_left_count small_763195_left_encoded = true := by
  decide +kernel
theorem small_763195_left_covered : CoveredBy scale carrier boxes small_763195_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_763195_left_root small_763195_left_fuel small_763195_left_count small_763195_left_encoded small_763195_left_checked

theorem cover_763195 : CoveredBy scale carrier boxes root_763195 := by
  apply coveredBy_split_literal root_763195 small_763195_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.root_763201 coord0 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_763195_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.cover_763201
#print axioms cover_763195

def root_771478 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_771478 : CoveredBy scale carrier boxes root_771478 := by
  apply coveredBy_split_literal root_771478 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0289.root Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0290.root coord1 true (3632448)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0289.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0290.covered
#print axioms cover_771478

def root_771472 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_771472_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16777216), (-16244736)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_771472_left_fuel : Nat := 1
def small_771472_left_count : Nat := 1
def small_771472_left_encoded : String := "00000004"
theorem small_771472_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_771472_left_root small_771472_left_fuel small_771472_left_count small_771472_left_encoded = true := by
  decide +kernel
theorem small_771472_left_covered : CoveredBy scale carrier boxes small_771472_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_771472_left_root small_771472_left_fuel small_771472_left_count small_771472_left_encoded small_771472_left_checked

theorem cover_771472 : CoveredBy scale carrier boxes root_771472 := by
  apply coveredBy_split_literal root_771472 small_771472_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.root_771478 coord4 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_771472_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.cover_771478
#print axioms cover_771472

def root_769738 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_769738 : CoveredBy scale carrier boxes root_769738 := by
  apply coveredBy_split_literal root_769738 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0288.root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.root_771472 coord4 false (4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0288.covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.cover_771472
#print axioms cover_769738

def root_769732 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_769732_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16777216), (-16244736)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_769732_left_fuel : Nat := 1
def small_769732_left_count : Nat := 1
def small_769732_left_encoded : String := "00000000"
theorem small_769732_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_769732_left_root small_769732_left_fuel small_769732_left_count small_769732_left_encoded = true := by
  decide +kernel
theorem small_769732_left_covered : CoveredBy scale carrier boxes small_769732_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_769732_left_root small_769732_left_fuel small_769732_left_count small_769732_left_encoded small_769732_left_checked

theorem cover_769732 : CoveredBy scale carrier boxes root_769732 := by
  apply coveredBy_split_literal root_769732 small_769732_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.root_769738 coord0 true (-16244736)
  · decide +kernel
  · decide +kernel
  · exact small_769732_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.cover_769738
#print axioms cover_769732

def root_769731 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_769731_right_root : ZRayBox := fun j => (#[⟨⟨(-4194304), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-15123200), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_769731_right_fuel : Nat := 22
def small_769731_right_count : Nat := 267
def small_769731_right_encoded : String := "135D44F705000108135D44FF04548A03138670F804548A05000000091386AD040CFD9BFD000000060000000900000002000000011386ACF80000000104548A0513867104000000020CFD9BFD0F350CFC000000030C9A86FC000000060F8750FD0000000600000003000000091386AD04000000060000000200000004135D80FF0000000404548A03138670F804548A0513867104000000020CFD9BFD0F350CFC000000030C9A86FC0F878CFD00000003028000F613D7ECF7000000000780010800000009128A7CFF0000000400000007000000090F8750FD028000F613D7ECF70000000007800108128A40FF022A458313E1C4F8022A45850000000513E201040B4D43FC00000007108010FD0000000700000003000000020000000113E200F800000001022A4585000000090000000600000004128A7CFF00000004022A45830000000713E200F800000001022A458513E1C504000000020000000A13E201040B4D43FC00000007108010FD00000007000000030000000213D7B0F70780010800000009128A7CFF00000004022A45830000000713E200F800000001022A4585000000070000000600000000000000030F34D0FC00000009000000031386AD040CFD9BFD0F350CFC000000030C9A86FC0F878CFD00000003028000F613D7ECF70000000007800108128A40FF0000000600000004128A7CFF00000004022A45830000000713E200F800000001067ECE850000000700000005000000060F8750FD028000F613D7ECF70000000007800108128A40FF0000000600000004128A7CFF00000004022A458313E1C4F8067ECE850000000700000006000000010000000600000006000000030F34D0FC028000F613D7ECF7000000000780010800000005128A7CFF0000000400000005000000090000000300000002000000011386ACF80000000104548A0513867104000000020CFD9BFD0F350CFC000000030C9A86FC0F878CFD00000003028000F613D7ECF70000000007800108128A40FF0000000900000004128A7CFF00000004067ECE8312EA58F80000000A000000010000000A13D7B0F70780010800000006128A7CFF000000040000000A000000000F8750FD028000F613D7ECF70000000007800108128A40FF067ECE8312EA58F800000006000000010000000600000004128A7CFF00000004067ECE8312EA58F8022A458513E1C504000000020000000A13E201040B4D43FC00000006108010FD0000000600000003000000020000000112EA94F800000001022A458513E1C504000000020000000A0000000613D7B0F70780010800000006128A7CFF00000004067ECE8312EA58F800000006000000010000000600000000000000030F34D0FC028000F613D7ECF70000000007800108000000090000000A00000009000000031386AD040CFD9BFD0F350CFC000000030C9A86FC000000060F8750FD0000000600000003000000050000000200000000"
theorem small_769731_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_769731_right_root small_769731_right_fuel small_769731_right_count small_769731_right_encoded = true := by
  decide +kernel
theorem small_769731_right_covered : CoveredBy scale carrier boxes small_769731_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_769731_right_root small_769731_right_fuel small_769731_right_count small_769731_right_encoded small_769731_right_checked

theorem cover_769731 : CoveredBy scale carrier boxes root_769731 := by
  apply coveredBy_split_literal root_769731 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.root_769732 small_769731_right_root coord0 false (-4194304)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.cover_769732
  · exact small_769731_right_covered
#print axioms cover_769731

def root_769725 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_769725_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-15123200)⟩, ⟨(-14529792), (-7264896)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_769725_left_fuel : Nat := 1
def small_769725_left_count : Nat := 1
def small_769725_left_encoded : String := "00000003"
theorem small_769725_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_769725_left_root small_769725_left_fuel small_769725_left_count small_769725_left_encoded = true := by
  decide +kernel
theorem small_769725_left_covered : CoveredBy scale carrier boxes small_769725_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_769725_left_root small_769725_left_fuel small_769725_left_count small_769725_left_encoded small_769725_left_checked

theorem cover_769725 : CoveredBy scale carrier boxes root_769725 := by
  apply coveredBy_split_literal root_769725 small_769725_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.root_769731 coord3 false (-15123200)
  · decide +kernel
  · decide +kernel
  · exact small_769725_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.cover_769731
#print axioms cover_769725

def root_769724 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_769724_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-7264896), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_769724_right_fuel : Nat := 7
def small_769724_right_count : Nat := 17
def small_769724_right_encoded : String := "120700FC050000F6135D80F70000000005000108135D44FF04548A0300000009000000050000000400000005135D44F70500010800000009000000090000000000000003"
theorem small_769724_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_769724_right_root small_769724_right_fuel small_769724_right_count small_769724_right_encoded = true := by
  decide +kernel
theorem small_769724_right_covered : CoveredBy scale carrier boxes small_769724_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_769724_right_root small_769724_right_fuel small_769724_right_count small_769724_right_encoded small_769724_right_checked

theorem cover_769724 : CoveredBy scale carrier boxes root_769724 := by
  apply coveredBy_split_literal root_769724 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.root_769725 small_769724_right_root coord3 true (-7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.cover_769725
  · exact small_769724_right_covered
#print axioms cover_769724

def root_769718 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_769718_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_769718_left_fuel : Nat := 1
def small_769718_left_count : Nat := 1
def small_769718_left_encoded : String := "00000002"
theorem small_769718_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_769718_left_root small_769718_left_fuel small_769718_left_count small_769718_left_encoded = true := by
  decide +kernel
theorem small_769718_left_covered : CoveredBy scale carrier boxes small_769718_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_769718_left_root small_769718_left_fuel small_769718_left_count small_769718_left_encoded small_769718_left_checked

theorem cover_769718 : CoveredBy scale carrier boxes root_769718 := by
  apply coveredBy_split_literal root_769718 small_769718_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.root_769724 coord2 false (15122432)
  · decide +kernel
  · decide +kernel
  · exact small_769718_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.cover_769724
#print axioms cover_769718

def root_769717 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_769717_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-15122432)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_769717_right_fuel : Nat := 17
def small_769717_right_count : Nat := 67
def small_769717_right_encoded : String := "12073D0408A912FD12073CFC00000003050000F6135D80F70000000005000108135D44FF04548A03138670F80CFD9C050F34D104000000020CFD9BFD0F350CFC000000030C9A86FC00000006000000050000000500000005000000010000000500000004135D80FF0000000404548A03138670F80CFD9C050F34D104000000020CFD9BFD0F350CFC000000030C9A86FC000000050F8750FD078000F600000005000000060000000300000005000000050000000100000005135D44F705000108135D44FF0000000600000004135D80FF0000000404548A03138670F80CFD9C050F34D104000000020CFD9BFD0000000600000005000000050000000100000005000000000000000500000002"
theorem small_769717_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_769717_right_root small_769717_right_fuel small_769717_right_count small_769717_right_encoded = true := by
  decide +kernel
theorem small_769717_right_covered : CoveredBy scale carrier boxes small_769717_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_769717_right_root small_769717_right_fuel small_769717_right_count small_769717_right_encoded small_769717_right_checked

theorem cover_769717 : CoveredBy scale carrier boxes root_769717 := by
  apply coveredBy_split_literal root_769717 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.root_769718 small_769717_right_root coord2 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.cover_769718
  · exact small_769717_right_covered
#print axioms cover_769717

def root_769712 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_769712_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-15122432), (-8388608)⟩, ⟨(0), (7264896)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_769712_right_fuel : Nat := 1
def small_769712_right_count : Nat := 1
def small_769712_right_encoded : String := "00000001"
theorem small_769712_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_769712_right_root small_769712_right_fuel small_769712_right_count small_769712_right_encoded = true := by
  decide +kernel
theorem small_769712_right_covered : CoveredBy scale carrier boxes small_769712_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_769712_right_root small_769712_right_fuel small_769712_right_count small_769712_right_encoded small_769712_right_checked

theorem cover_769712 : CoveredBy scale carrier boxes root_769712 := by
  apply coveredBy_split_literal root_769712 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.root_769717 small_769712_right_root coord1 false (-15122432)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.cover_769717
  · exact small_769712_right_covered
#print axioms cover_769712

def root_769711 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_769711_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(7264896), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_769711_right_fuel : Nat := 28
def small_769711_right_count : Nat := 177
def small_769711_right_encoded : String := "12073CF80000000108A91305120701040000000208A912FD12073CFC00000003050000F6135D80F70000000005000108135D44FF0CFD9C030F34D0F804548A0513867104000000020CFD9BFD0F350CFC000000030C9A86FC0F878CFD00000003000000050F8750FD078000F6128A7CF7000000000000000500000006000000030000000500000005000000010000000500000004135D80FF000000040CFD9C030F34D0F804548A0513867104000000020CFD9BFD0F350CFC000000030C9A86FC0F878CFD00000003000000050F8750FD078000F6128A7CF7000000000780010800000005128A7CFF0000000400000005128A40F707800108128A40FF0000000600000004128A7CFF000000040AD3578310D100F8022A458513E1C504000000020B4D43FC10804CFD0000000300000005108010FD000000080000000300000005000000010000000500000000000000030000000500000005000000010F350CF80000000104548A0513867104000000020CFD9BFD0F350CFC000000030C9A86F8000000050F87510300000001000000050000000500000005135D44F705000108135D44FF0CFD9C030F34D0F804548A0513867104000000020CFD9BFD000000060000000500000005000000010000000600000004135D80FF000000040CFD9C030F34D0F804548A0513867104000000020CFD9BFD0F350CFC000000030C9A86FC0F878CFD00000003028000F613D7ECF7000000000780010800000006128A7CFF000000040AD3578310D100F8000000050000000100000005000000060F8750FD00000006000000030F34D0FC00000005000000031386AD040CFD9BFD000000060000000500000002000000010F350CF80000000104548A0513867104000000020CFD9BFD0F350CFC000000030C9A86F800000006000000060F34D0FC00000005000000030000000600000000120700FC000000050000000312073D040000000500000002"
theorem small_769711_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_769711_right_root small_769711_right_fuel small_769711_right_count small_769711_right_encoded = true := by
  decide +kernel
theorem small_769711_right_covered : CoveredBy scale carrier boxes small_769711_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_769711_right_root small_769711_right_fuel small_769711_right_count small_769711_right_encoded small_769711_right_checked

theorem cover_769711 : CoveredBy scale carrier boxes root_769711 := by
  apply coveredBy_split_literal root_769711 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.root_769712 small_769711_right_root coord1 true (7264896)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.cover_769712
  · exact small_769711_right_covered
#print axioms cover_769711

def root_769706 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_769706_right_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (8388608)⟩, ⟨(-14529024), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_769706_right_fuel : Nat := 1
def small_769706_right_count : Nat := 1
def small_769706_right_encoded : String := "00000004"
theorem small_769706_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_769706_right_root small_769706_right_fuel small_769706_right_count small_769706_right_encoded = true := by
  decide +kernel
theorem small_769706_right_covered : CoveredBy scale carrier boxes small_769706_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_769706_right_root small_769706_right_fuel small_769706_right_count small_769706_right_encoded small_769706_right_checked

theorem cover_769706 : CoveredBy scale carrier boxes root_769706 := by
  apply coveredBy_split_literal root_769706 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.root_769711 small_769706_right_root coord4 true (-14529024)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.cover_769711
  · exact small_769706_right_covered
#print axioms cover_769706

def root_769705 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-14529792), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
theorem cover_769705 : CoveredBy scale carrier boxes root_769705 := by
  apply coveredBy_split_literal root_769705 Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.root_769706 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0291.root coord4 false (8388608)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.cover_769706
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0291.covered
#print axioms cover_769705

def root_769699 : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (0)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_769699_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (0)⟩, ⟨(-16777216), (-14529024)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(8388608), (16777216)⟩, ⟨(0), (14529792)⟩⟩, ⟨⟨(-16777216), (-8388608)⟩, ⟨(-16777216), (-14529792)⟩⟩, ⟨⟨(0), (16777216)⟩, ⟨(-16777216), (0)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_769699_left_fuel : Nat := 1
def small_769699_left_count : Nat := 1
def small_769699_left_encoded : String := "00000003"
theorem small_769699_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_769699_left_root small_769699_left_fuel small_769699_left_count small_769699_left_encoded = true := by
  decide +kernel
theorem small_769699_left_covered : CoveredBy scale carrier boxes small_769699_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_769699_left_root small_769699_left_fuel small_769699_left_count small_769699_left_encoded small_769699_left_checked

theorem cover_769699 : CoveredBy scale carrier boxes root_769699 := by
  apply coveredBy_split_literal root_769699 small_769699_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.root_769705 coord3 true (-14529792)
  · decide +kernel
  · decide +kernel
  · exact small_769699_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.cover_769705
#print axioms cover_769699

def root_779767 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_779767_right_root : ZRayBox := fun j => (#[⟨⟨(-6291456), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(16378880), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_779767_right_fuel : Nat := 24
def small_779767_right_count : Nat := 433
def small_779767_right_encoded : String := "128A40F7078000FC128A7CFD0000000307800108128A40FF022A458313E1C4F8022A45850000000513E20104064000F612FFACF70000000008C000FC11FC24FD000000030640010812FF70FF011523430000000513F894F800000001033F67C50000000500000006000000040000000711FBE8FD000000050000000312FF70F70000000500000000000000020000000113E200F800000001022A458513E1C50400000002064000F612FFACF70000000008C000FC11FC24FD000000030640010812FF70FF033F67C30000000513BC30F800000001011523450000000513F8950406E000F612C820F700000000096000FC000000060000000500000005000000020000000412FFACFF00000004033F67C30000000513BC30F800000001011523450000000513F8950406E000F612C820F700000000096000FC0000000711AA80FD000000050000000312C7E4F700000005000000000000000211FBE8FD000000050000000312FF70F7000000050000000013E20104064000F612FFACF70000000008C000FC11FC24FD000000030640010812FF70FF033F67C313BBF4F80000000600000001000000060000000412FFACFF00000004033F67C313BBF4F8033F67C500000007000000070000000113BC30F800000001033F67C513BBF5040000000206E000F612C820F700000000096000FC0000000611AA80FD0000000600000003000000060000000611FBE8FD0640010812FF70FF033F67C313BBF4F8033F67C5000000050000000600000001000000060000000412FFACFF00000004033F67C313BBF4F8033F67C50000000513BC310406E000F612C820F700000000082000FC000000060000000A00000006000000020000000113BC30F800000001033F67C513BBF5040000000206E000F612C820F700000000082000FC0000000612465CFD000000080000000300000006000000060000000312FF70F708C000FC0000000611FBE8FD064001080000000612FFACFF000000040000000600000003000000000000000200000004128A7CFF00000004022A458313E1C4F8022A45850000000513E20104064000F612FFACF70000000008C000FC0000000711FBE8FD08C0010800000007000000070000000312FF70F708C000FC0000000711FBE8FD000000050000000300000000000000020000000113E200F800000001022A458513E1C50400000002064000F612FFACF70000000008C000FC11FC24FD0000000308C0010811FBE8FF033F67C30000000513BC30F800000001011523450000000500000007000000040000000711FBE8FD08C0010811FBE8FF000000050000000411FC24FF00000004033F67C300000005000000080000000312FF70F708C000FC11FC24FD0000000308C0010811FBE8FF00000005000000040000000711FBE8FD00000005000000030000000013E20104064000F612FFACF70000000008C000FC11FC24FD0000000308C0010811FBE8FF033F67C30000000713BC30F800000001033F67C50000000700000007000000040000000711FBE8FD08C0010811FBE8FF033F67C313BBF4F8033F67C50000000513BC310406E000F60000000700000007000000020000000113BC30F800000001033F67C513BBF5040000000206E000F60000000912C7E4F70000000800000000000000090000000411FC24FF00000004000000090000000312FF70F708C000FC11FC24FD0000000308C0010811FBE8FF033F67C30000000713BC30F800000001033F67C50000000700000006000000040000000711FBE8FD08C0010811FBE8FF033F67C313BBF4F8033F67C500000005000000070000000113BC30F800000001033F67C500000008000000060000000411FC24FF00000004033F67C30000000700000008000000030000000000000002128A40FD07800108128A40FF022A45830000000513E200F800000001022A45850000000513E20104064000F612FFACF700000000064000FC12FFACFD000000030640010812FF70FF033F67C300000005000000060000000412FFACFF00000004033F67C30000000513BC30F800000001033F67C5000000050000000612FF70FD064001080000000812FFACFF00000004000000080000000312FF70F7064000FC12FFACFD00000003064001080000000612FFACFF000000040000000800000008000000000000000200000004128A7CFF00000004022A45830000000513E200F800000001022A45850000000513E20104064000F612FFACF700000000064000FC12FFACFD0000000308C0010811FBE8FF033F67C30000000500000009000000040000000912FF70FD000000090000000312FF70F7064000FC12FFACFD0000000308C001080000000811FC24FF00000004000000080000000800000000000000020000000300000000"
theorem small_779767_right_checked :
    PackedHex.checkHexPacked scale carrier boxes small_779767_right_root small_779767_right_fuel small_779767_right_count small_779767_right_encoded = true := by
  decide +kernel
theorem small_779767_right_covered : CoveredBy scale carrier boxes small_779767_right_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_779767_right_root small_779767_right_fuel small_779767_right_count small_779767_right_encoded small_779767_right_checked

theorem cover_779767 : CoveredBy scale carrier boxes root_779767 := by
  apply coveredBy_split_literal root_779767 Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0293.root small_779767_right_root coord0 false (-6291456)
  · decide +kernel
  · decide +kernel
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Chunk0293.covered
  · exact small_779767_right_covered
#print axioms cover_779767

def root_779761 : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(15122432), (16777216)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_779761_left_root : ZRayBox := fun j => (#[⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(-16777216), (-16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(15122432), (16378880)⟩, ⟨(0), (3632448)⟩⟩, ⟨⟨(-8388608), (-4194304)⟩, ⟨(-16244736), (-14529024)⟩⟩, ⟨⟨(4194304), (8388608)⟩, ⟨(-16244736), (-14529024)⟩⟩] : Array ZBox).getD j.val ⟨⟨0,0⟩,⟨0,0⟩⟩
def small_779761_left_fuel : Nat := 1
def small_779761_left_count : Nat := 1
def small_779761_left_encoded : String := "00000002"
theorem small_779761_left_checked :
    PackedHex.checkHexPacked scale carrier boxes small_779761_left_root small_779761_left_fuel small_779761_left_count small_779761_left_encoded = true := by
  decide +kernel
theorem small_779761_left_covered : CoveredBy scale carrier boxes small_779761_left_root :=
  PackedHex.checkHexPacked_sound (by decide) carrier boxes small_779761_left_root small_779761_left_fuel small_779761_left_count small_779761_left_encoded small_779761_left_checked

theorem cover_779761 : CoveredBy scale carrier boxes root_779761 := by
  apply coveredBy_split_literal root_779761 small_779761_left_root Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.root_779767 coord2 false (16378880)
  · decide +kernel
  · decide +kernel
  · exact small_779761_left_covered
  · exact Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019.cover_779767
#print axioms cover_779761

end Mub6.Numerical.IntegerIntervals.TaoBundle.Assembly0019
